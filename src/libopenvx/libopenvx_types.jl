# Type aliasing
const vx_char = UInt8
const vx_uint8 = UInt8
const vx_uint16 = UInt16
const vx_uint32 = UInt32
const vx_uint64 = UInt64
const vx_int8 = Int8
const vx_int16 = Int16
const vx_int32 = Int32
const vx_int64 = Int64
const vx_bitfield = UInt32
const vx_float32 = Cfloat
const vx_float64 = Cdouble
const vx_reference = Ptr{Cvoid}
const vx_enum = Int32
const vx_size = Csize_t
const vx_df_image = UInt32
const vx_map_id = Csize_t
const vx_bool = vx_enum
const vx_status = vx_enum
const vx_action = vx_enum

# Opaque pointer types
const vx_scalar = Ptr{Cvoid}
const vx_image = Ptr{Cvoid}
const vx_kernel = Ptr{Cvoid}
const vx_parameter = Ptr{Cvoid}
const vx_node = Ptr{Cvoid}
const vx_graph = Ptr{Cvoid}
const vx_context = Ptr{Cvoid}
const vx_delay = Ptr{Cvoid}
const vx_lut = Ptr{Cvoid}
const vx_distribution = Ptr{Cvoid}
const vx_matrix = Ptr{Cvoid}
const vx_pyramid = Ptr{Cvoid}
const vx_threshold = Ptr{Cvoid}
const vx_convolution = Ptr{Cvoid}
const vx_remap = Ptr{Cvoid}
const vx_array = Ptr{Cvoid}
const vx_object_array = Ptr{Cvoid}
const vx_tensor = Ptr{Cvoid}
const vx_meta_format = Ptr{Cvoid}
const vx_nodecomplete_f = Ptr{Cvoid}
const vx_publish_kernels_f = Ptr{Cvoid}
const vx_unpublish_kernels_f = Ptr{Cvoid}
const vx_kernel_f = Ptr{Cvoid}
const vx_kernel_initialize_f = Ptr{Cvoid}
const vx_kernel_deinitialize_f = Ptr{Cvoid}
const vx_kernel_validate_f = Ptr{Cvoid}
const vx_kernel_image_valid_rectangle_f = Ptr{Cvoid}
const vx_log_callback_f = Ptr{Cvoid}
const vx_import = Ptr{Cvoid}
const vx_platform = Ptr{Cvoid}
const vx_kernel_input_validate_f = Ptr{Cvoid}
const vx_kernel_output_validate_f = Ptr{Cvoid}
const vx_tiling_kernel_f = Ptr{Cvoid}

# Skipped: Function prototype for VX_CALLBACK

# Structs
struct vx_imagepatch_addressing_t
    dim_x::vx_uint32
    dim_y::vx_uint32
    stride_x::vx_int32
    stride_y::vx_int32
    scale_x::vx_uint32
    scale_y::vx_uint32
    step_x::vx_uint32
    step_y::vx_uint32
end

const VX_IMAGEPATCH_ADDR_INIT = vx_imagepatch_addressing_t(0, 0, 0, 0, 0, 0, 0, 0)

struct vx_perf_t
    tmp::vx_uint64
    beg::vx_uint64
    _end::vx_uint64
    sum::vx_uint64
    avg::vx_uint64
    min::vx_uint64
    num::vx_uint64
    max::vx_uint64
end

const VX_PERF_INIT = vx_perf_t(0, 0, 0, 0, 0, 0, 0, 0)

struct vx_hough_lines_p_t
    rho::vx_float32
    theta::vx_float32
    threshold::vx_int32
    line_length::vx_int32
    line_gap::vx_int32
    theta_max::vx_float32
    theta_min::vx_float32
end

struct vx_line2d_t
    start_x::vx_float32
    start_y::vx_float32
    end_x::vx_float32
    end_y::vx_float32
end

struct vx_tensor_matrix_multiply_params_t
    transpose_input1::vx_bool
    transpose_input2::vx_bool
    transpose_input3::vx_bool
end

struct vx_kernel_info_t
    enumeration::vx_enum
    name::NTuple{256, vx_char}
end

struct vx_keypoint_t
    x::vx_int32
    y::vx_int32
    strength::vx_float32
    scale::vx_float32
    orientation::vx_float32
    tracking_status::vx_int32
    error::vx_float32
end

struct vx_rectangle_t
    start_x::vx_uint32
    start_y::vx_uint32
    end_x::vx_uint32
    end_y::vx_uint32
end

struct vx_coordinates2d_t
    x::vx_uint32
    y::vx_uint32
end

struct vx_coordinates2df_t
    x::vx_float32
    y::vx_float32
end

struct vx_coordinates3d_t
    x::vx_uint32
    y::vx_uint32
    z::vx_uint32
end

struct vx_pixel_value_t
    RGB::NTuple{3, vx_uint8}
    RGBX::NTuple{4, vx_uint8}
    YUV::NTuple{3, vx_uint8}
    U8::vx_uint8
    U16::vx_uint16
    S16::vx_int16
    U32::vx_uint32
    S32::vx_int32
    reserved::NTuple{16, vx_uint8}
end

struct vx_hog_t
    cell_width::vx_int32
    cell_height::vx_int32
    block_width::vx_int32
    block_height::vx_int32
    block_stride::vx_int32
    num_bins::vx_int32
    window_width::vx_int32
    window_height::vx_int32
    window_stride::vx_int32
    threshold::vx_float32
end

struct vx_border_t
    mode::vx_enum
    constant_value::vx_pixel_value_t
end

struct vx_delta_rectangle_t
    delta_start_x::Cint
    delta_start_y::Cint
    delta_end_x::Cint
    delta_end_y::Cint
end

struct vx_nn_convolution_params_t
    padding_x::vx_size
    padding_y::vx_size
    overflow_policy::vx_enum
    rounding_policy::vx_enum
    down_scale_size_rounding::vx_enum
    dilation_x::vx_size
    dilation_y::vx_size
end

struct vx_nn_deconvolution_params_t
    padding_x::vx_size
    padding_y::vx_size
    overflow_policy::vx_enum
    rounding_policy::vx_enum
    a_x::vx_size
    a_y::vx_size
end

struct vx_nn_roi_pool_params_t
    pool_type::vx_enum
end
## TODO: perhaps need to redefine these, in C it looks like array of structs per
#field of the specs for find/replace
struct ANONYMOUS1_find
    kernel_id::vx_enum
    arg_spec::NTuple{32, vx_uint32}
end

struct ANONYMOUS2_replace
    kernel_id::vx_enum
    arg_spec::NTuple{32, vx_uint32}
end

struct AgoNodeMergeRule
    find::ANONYMOUS1_find
    replace::ANONYMOUS2_replace
end

struct vx_tile_block_size_t
    width::vx_int32
    height::vx_int32
end

struct vx_neighborhood_size_t
    left::vx_int32
    right::vx_int32
    top::vx_int32
    bottom::vx_int32
end

struct vx_image_description_t
    width::vx_uint32
    height::vx_uint32
    format::vx_df_image
    planes::vx_uint32
    range::vx_enum
    space::vx_enum
end

struct vx_tile_t
    base::NTuple{4, Ptr{vx_uint8}}
    tile_x::vx_uint32
    tile_y::vx_uint32
    addr::NTuple{4, vx_imagepatch_addressing_t}
    tile_block::vx_tile_block_size_t
    neighborhood::vx_neighborhood_size_t
    image::vx_image_description_t
end

struct AgoImageFormatDescription
    components::vx_size
    planes::vx_size
    pixelSizeInBitsNum::vx_size
    colorSpace::vx_color_space_e
    channelRange::vx_channel_range_e
    pixelSizeInBitsDenom::vx_size
end

struct AgoTargetAffinityInfo
    device_type::vx_uint32
    device_info::vx_uint32
    reserved::NTuple{2, vx_uint32}
end

struct AgoContextTextMacroInfo
    macroName::NTuple{256, vx_char}
    text::Cstring
end

struct AgoGraphImportInfo
    text::Cstring
    num_ref::vx_uint32
    ref::Ptr{vx_reference}
    dumpToConsole::vx_int32
    data_registry_callback_f::Ptr{Cvoid}
    data_registry_callback_obj::Ptr{Cvoid}
end

struct AgoGraphExportInfo
    fileName::NTuple{256, vx_char}
    num_ref::vx_uint32
    ref::Ptr{vx_reference}
    comment::NTuple{64, vx_char}
end



