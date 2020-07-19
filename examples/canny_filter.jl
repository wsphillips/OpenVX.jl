using OpenVX
    
include("imageio.jl")

function make_filter_graph(ctx, input::VX.vx_image, output::VX.vx_image, width, height)

    graph = VX.CreateGraph(ctx)

    yuv_image = VX.CreateVirtualImage(graph, width, height, VX.DF_IMAGE_IYUV)
    luma_image = VX.CreateVirtualImage(graph, width, height, VX.DF_IMAGE_U8)

    hyst = VX.CreateThreshold(ctx, VX.THRESHOLD_TYPE_RANGE, VX.TYPE_UINT8)

    lower = Ref{Int32}(80)
    upper = Ref{Int32}(100)

    VX.SetThresholdAttribute(hyst, VX.THRESHOLD_ATTRIBUTE_THRESHOLD_LOWER,
                             lower, sizeof(Int32))
    VX.SetThresholdAttribute(hyst, VX.THRESHOLD_ATTRIBUTE_THRESHOLD_UPPER,
                             upper, sizeof(Int32))

    gradient_size = 3

    nodes = [VX.ColorConvertNode(graph, input, yuv_image),
             VX.ChannelExtractNode(graph, yuv_image, VX.CHANNEL_Y, luma_image),
             VX.CannyEdgeDetectorNode(graph, luma_image, hyst, gradient_size,
                                      VX.NORM_L1, output)]

    VX.ReleaseImage(Ref(yuv_image))
    VX.ReleaseImage(Ref(luma_image))

    for i in 1:length(nodes)
        VX.ReleaseNode(Ref(nodes[i]))
    end

    return graph
end

ctx = VX.CreateContext()

filename = "assets/airplane.bmp"
width = 512
height = 512

image = image_from_file(filename, width, height)
output = VX.CreateImage(ctx, width, height, VX.DF_IMAGE_U8)

graph = make_filter_graph(ctx, image, output, width, height)
VX.VerifyGraph(graph)
VX.ProcessGraph(graph)
file_from_gray_image(output, "airplane_canny.bmp", width, height)
