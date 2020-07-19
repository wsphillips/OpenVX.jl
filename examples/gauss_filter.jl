using OpenVX

# FIXME: There's a problem with channel combine node that causes periodic artifacts
# in the output image. After some testing and checking against reference C API
# examples this looks to be a bug in AMD's implementation.

include("imageio.jl")

"""
Creates a graph with one input image and one output image.
You supply the input and output images, it is assumed that the input and output
images are RGB.
"""
function make_filter_graph(ctx, input::VX.vx_image, output::VX.vx_image, width, height)

    num_virt = 6 # number of virtual UInt8/grayscale images that we need

    graph = VX.CreateGraph(ctx)

    virtu8 = Vector{Ptr{Cvoid}}(undef, num_virt)
    nodes = Vector{Ptr{Cvoid}}(undef, 7)
    for i in 1:num_virt
        virtu8[i] = VX.CreateVirtualImage(graph, width, height, VX.DF_IMAGE_U8)
    end
    
    # Do custom filtering on the input image
    # First, extract R, G, and B channels to individual virtual images
    nodes[1] = VX.ChannelExtractNode(graph, input, VX.CHANNEL_R, virtu8[1])
    nodes[2] = VX.ChannelExtractNode(graph, input, VX.CHANNEL_G, virtu8[2])
    nodes[3] = VX.ChannelExtractNode(graph, input, VX.CHANNEL_B, virtu8[3])
    
    # Now, run box filter on each of gray scale images
    for i in 1:3
        nodes[3+i] = VX.Gaussian3x3Node(graph, virtu8[i], virtu8[i + 3])
    end

    # Now combine images together in the output color image
    nodes[7] = VX.ChannelCombineNode(graph, virtu8[4], virtu8[5], virtu8[6], C_NULL, output)

    for i in 1:num_virt
        VX.ReleaseImage(Ref(virtu8[i]))
    end

    for i in 1:length(nodes)
        VX.ReleaseNode(Ref(nodes[i]))
    end

    return graph
end

# Main

ctx = VX.CreateContext()

filename = "assets/airplane.bmp"
width = 1200
height = 1200

image = image_from_file(filename, width, height)
output = VX.CreateImage(ctx, width, height, VX.DF_IMAGE_RGB)
graph = make_filter_graph(ctx, image, output, width, height)
VX.VerifyGraph(graph)
VX.ProcessGraph(graph)
file_from_image(output, "airplane_gauss.bmp", width, height)
