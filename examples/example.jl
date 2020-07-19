using ImageCore
using FileIO
using OpenVX
"""
Loads an image from file and maps it to an OpenVX image object
"""
function image_from_file(filename::String, width, height)

    raw_image = load(filename).parent.parent
    vx_input_image = VX.CreateImage(ctx, width, height, VX.DF_IMAGE_RGB)

    image_region = Ref{VX.vx_rectangle_t}()
    VX.GetValidRegionImage(vx_input_image, image_region)
    
    image_layout = Ref{VX.vx_imagepatch_addressing_t}()
    map_id = Ref{VX.vx_map_id}()
    ptr = Ref{Ptr{UInt8}}()
    
    VX.MapImagePatch(vx_input_image, image_region[], 0, map_id, image_layout, ptr,
                     VX.READ_AND_WRITE, VX.MEMORY_TYPE_HOST) 
    
    dims = (3, Int(image_layout[].stride_y ÷ 3), height)
    mapped_vx_image = unsafe_wrap(Array, ptr[], dims)
    
    #copy our loaded image to VX mapped memory
    mapped_vx_image .= raw_image
    
    if VX.UnmapImagePatch(vx_input_image, map_id[]) == 0
        mapped_vx_image = nothing
    end
    
    return vx_input_image
end

function file_from_image(image, filename::String, width, height)

    local_image = zeros(UInt8, 3, width, height)
    image_region = Ref{VX.vx_rectangle_t}()
    VX.GetValidRegionImage(image, image_region)
    
    image_layout = Ref{VX.vx_imagepatch_addressing_t}()
    map_id = Ref{VX.vx_map_id}()
    ptr = Ref{Ptr{UInt8}}()
    
    VX.MapImagePatch(image, image_region[], 0, map_id, image_layout, ptr,
                     VX.READ_AND_WRITE, VX.MEMORY_TYPE_HOST) 
    
    dims = (3, Int(image_layout[].stride_y ÷ 3), height)
    mapped_vx_image = unsafe_wrap(Array, ptr[], dims)
    
    #copy our loaded image to VX mapped memory
    local_image .= mapped_vx_image
    
    if VX.UnmapImagePatch(image, map_id[]) == 0
        mapped_vx_image = nothing
    end
    
    normed = reinterpret.(N0f8, local_image)
    color_view = colorview(RGB, normed)
    
    save(filename, color_view)

    return color_view
end


"""
Creates a graph with one input image and one output image.
You supply the input and output images, it is assumed that the input and output
images are RGB.
"""
function make_filter_graph(ctx, input::VX.vx_image, output::VX.vx_image)

    num_virt = 6 # number of virtual UInt8/grayscale images that we need

    graph = VX.CreateGraph(ctx)

    virtu8 = Vector{Ptr{Cvoid}}(undef, num_virt)

    for i in 1:num_virt
        virtu8[i] = VX.CreateVirtualImage(graph, 0, 0, VX.DF_IMAGE_U8)
    end
    
    # 3x3 box filtetr coefficients (transposed for row major storage)
    scharr_coeffs = Int16[3  0 -3
                          10 0 -10
                          3  0 -3]
    #scale for convolution
    scale = Ref{UInt32}(2)
    # Create convolution object, set convolution coefficients and scale
    scharr = VX.CreateConvolution(ctx, 3, 3)

    VX.CopyConvolutionCoefficients(scharr, scharr_coeffs,
                                   VX.WRITE_ONLY, VX.MEMORY_TYPE_HOST)
    VX.SetConvolutionAttribute(scharr, VX.CONVOLUTION_SCALE, scale, sizeof(UInt32))
    
    # Do custom filtering on the input image
    # First, extract R, G, and B channels to individual virtual images
    VX.ChannelExtractNode(graph, input, VX.CHANNEL_R, virtu8[1])
    VX.ChannelExtractNode(graph, input, VX.CHANNEL_G, virtu8[2])
    VX.ChannelExtractNode(graph, input, VX.CHANNEL_B, virtu8[3])
    
    # Now, run box filter on each of gray scale images
    for i in 1:3
        VX.ConvolveNode(graph, virtu8[i], scharr, virtu8[i + 3])
    end

    # Now combine images together in the output color image
    VX.ChannelCombineNode(graph, virtu8[4], virtu8[5], virtu8[6], C_NULL, output)

    for i in 1:num_virt
        VX.ReleaseImage(Ref(virtu8[i]))
    end
    return graph
end

ctx = VX.CreateContext()

filename = "assets/airplane.ppm"
width = 512
height = 512

image = image_from_file(filename, width, height)
output = VX.CreateImage(ctx, width, height, VX.DF_IMAGE_RGB)
graph = make_filter_graph(ctx, image, output)
VX.ProcessGraph(graph)
file_from_image(output, "airplane_out.jpg", width, height)
