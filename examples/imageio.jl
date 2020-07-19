using ImageCore
using FileIO

function image_from_file(filename::String, width, height)
    raw_image = reinterpret(UInt8, load(filename))
    vx_input_image = VX.CreateImage(ctx, width, height, VX.DF_IMAGE_RGB)
    
    image_region = Ref{VX.vx_rectangle_t}()
    image_region[] = VX.vx_rectangle_t(0, 0, width, height)
    image_layout = Ref{VX.vx_imagepatch_addressing_t}() 
    image_layout[] = VX.vx_imagepatch_addressing_t(stride_x = 3, stride_y = width * 3)
    VX.CopyImagePatch(vx_input_image, image_region, 0, image_layout, raw_image,
                      VX.WRITE_ONLY, VX.MEMORY_TYPE_HOST)   
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
                     VX.READ_ONLY, VX.MEMORY_TYPE_HOST, VX.NOGAP_X) 
    
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

function file_from_gray_image(image, filename::String, width, height)

    image_region = Ref{VX.vx_rectangle_t}()
    VX.GetValidRegionImage(image, image_region)
    
    image_layout = Ref{VX.vx_imagepatch_addressing_t}()
    map_id = Ref{VX.vx_map_id}()
    ptr = Ref{Ptr{UInt8}}()
    
    VX.MapImagePatch(image, image_region[], 0, map_id, image_layout, ptr,
                     VX.READ_ONLY, VX.MEMORY_TYPE_HOST, VX.NOGAP_X) 
    
    dims = (Int(image_layout[].stride_y), height)
    mapped_vx_image = unsafe_wrap(Array, ptr[], dims)
    
    #copy from VX mapped memory
    local_image = mapped_vx_image[1:Int(image_layout[].dim_x), 1:Int(image_layout[].dim_y)]
   
    normed = reinterpret.(N0f8, local_image)
    color_view = colorview(Gray, normed)
    
    save(filename, color_view)

    if VX.UnmapImagePatch(image, map_id[]) == 0
        mapped_vx_image = nothing
    end
 
    return color_view
end


