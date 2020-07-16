@cenum vx_vendor_id_e::Int32 begin
    VX_ID_KHRONOS = 0
    VX_ID_TI = 1
    VX_ID_QUALCOMM = 2
    VX_ID_NVIDIA = 3
    VX_ID_ARM = 4
    VX_ID_BDTI = 5
    VX_ID_RENESAS = 6
    VX_ID_VIVANTE = 7
    VX_ID_XILINX = 8
    VX_ID_AXIS = 9
    VX_ID_MOVIDIUS = 10
    VX_ID_SAMSUNG = 11
    VX_ID_FREESCALE = 12
    VX_ID_AMD = 13
    VX_ID_BROADCOM = 14
    VX_ID_INTEL = 15
    VX_ID_MARVELL = 16
    VX_ID_MEDIATEK = 17
    VX_ID_ST = 18
    VX_ID_CEVA = 19
    VX_ID_ITSEEZ = 20
    VX_ID_IMAGINATION = 21
    VX_ID_NXP = 22
    VX_ID_VIDEANTIS = 23
    VX_ID_SYNOPSYS = 24
    VX_ID_CADENCE = 25
    VX_ID_HUAWEI = 26
    VX_ID_SOCIONEXT = 27
    VX_ID_USER = 4094
    VX_ID_MAX = 4095
    VX_ID_DEFAULT = 4095
end

@cenum vx_bool_e::Int32 begin
    vx_false_e = 0
    vx_true_e = 1
end

@cenum vx_type_e::Int32 begin
    VX_TYPE_INVALID = 0
    VX_TYPE_CHAR = 1
    VX_TYPE_INT8 = 2
    VX_TYPE_UINT8 = 3
    VX_TYPE_INT16 = 4
    VX_TYPE_UINT16 = 5
    VX_TYPE_INT32 = 6
    VX_TYPE_UINT32 = 7
    VX_TYPE_INT64 = 8
    VX_TYPE_UINT64 = 9
    VX_TYPE_FLOAT32 = 10
    VX_TYPE_FLOAT64 = 11
    VX_TYPE_ENUM = 12
    VX_TYPE_SIZE = 13
    VX_TYPE_DF_IMAGE = 14
    VX_TYPE_BOOL = 16
    VX_TYPE_RECTANGLE = 32
    VX_TYPE_KEYPOINT = 33
    VX_TYPE_COORDINATES2D = 34
    VX_TYPE_COORDINATES3D = 35
    VX_TYPE_COORDINATES2DF = 36
    VX_TYPE_HOG_PARAMS = 40
    VX_TYPE_HOUGH_LINES_PARAMS = 41
    VX_TYPE_LINE_2D = 42
    VX_TYPE_TENSOR_MATRIX_MULTIPLY_PARAMS = 43
    VX_TYPE_USER_STRUCT_START = 256
    VX_TYPE_VENDOR_STRUCT_START = 1024
    VX_TYPE_KHRONOS_OBJECT_START = 2048
    VX_TYPE_VENDOR_OBJECT_START = 3072
    VX_TYPE_KHRONOS_STRUCT_MAX = 255
    VX_TYPE_USER_STRUCT_END = 1023
    VX_TYPE_VENDOR_STRUCT_END = 2047
    VX_TYPE_KHRONOS_OBJECT_END = 3071
    VX_TYPE_VENDOR_OBJECT_END = 4095
    VX_TYPE_REFERENCE = 2048
    VX_TYPE_CONTEXT = 2049
    VX_TYPE_GRAPH = 2050
    VX_TYPE_NODE = 2051
    VX_TYPE_KERNEL = 2052
    VX_TYPE_PARAMETER = 2053
    VX_TYPE_DELAY = 2054
    VX_TYPE_LUT = 2055
    VX_TYPE_DISTRIBUTION = 2056
    VX_TYPE_PYRAMID = 2057
    VX_TYPE_THRESHOLD = 2058
    VX_TYPE_MATRIX = 2059
    VX_TYPE_CONVOLUTION = 2060
    VX_TYPE_SCALAR = 2061
    VX_TYPE_ARRAY = 2062
    VX_TYPE_IMAGE = 2063
    VX_TYPE_REMAP = 2064
    VX_TYPE_ERROR = 2065
    VX_TYPE_META_FORMAT = 2066
    VX_TYPE_OBJECT_ARRAY = 2067
    VX_TYPE_TENSOR = 2069
end

@cenum vx_status_e::Int32 begin
    VX_STATUS_MIN = -25
    VX_ERROR_REFERENCE_NONZERO = -24
    VX_ERROR_MULTIPLE_WRITERS = -23
    VX_ERROR_GRAPH_ABANDONED = -22
    VX_ERROR_GRAPH_SCHEDULED = -21
    VX_ERROR_INVALID_SCOPE = -20
    VX_ERROR_INVALID_NODE = -19
    VX_ERROR_INVALID_GRAPH = -18
    VX_ERROR_INVALID_TYPE = -17
    VX_ERROR_INVALID_VALUE = -16
    VX_ERROR_INVALID_DIMENSION = -15
    VX_ERROR_INVALID_FORMAT = -14
    VX_ERROR_INVALID_LINK = -13
    VX_ERROR_INVALID_REFERENCE = -12
    VX_ERROR_INVALID_MODULE = -11
    VX_ERROR_INVALID_PARAMETERS = -10
    VX_ERROR_OPTIMIZED_AWAY = -9
    VX_ERROR_NO_MEMORY = -8
    VX_ERROR_NO_RESOURCES = -7
    VX_ERROR_NOT_COMPATIBLE = -6
    VX_ERROR_NOT_ALLOCATED = -5
    VX_ERROR_NOT_SUFFICIENT = -4
    VX_ERROR_NOT_SUPPORTED = -3
    VX_ERROR_NOT_IMPLEMENTED = -2
    VX_FAILURE = -1
    VX_SUCCESS = 0
end

@cenum vx_enum_e::Int32 begin
    VX_ENUM_DIRECTION = 0
    VX_ENUM_ACTION = 1
    VX_ENUM_HINT = 2
    VX_ENUM_DIRECTIVE = 3
    VX_ENUM_INTERPOLATION = 4
    VX_ENUM_OVERFLOW = 5
    VX_ENUM_COLOR_SPACE = 6
    VX_ENUM_COLOR_RANGE = 7
    VX_ENUM_PARAMETER_STATE = 8
    VX_ENUM_CHANNEL = 9
    VX_ENUM_CONVERT_POLICY = 10
    VX_ENUM_THRESHOLD_TYPE = 11
    VX_ENUM_BORDER = 12
    VX_ENUM_COMPARISON = 13
    VX_ENUM_MEMORY_TYPE = 14
    VX_ENUM_TERM_CRITERIA = 15
    VX_ENUM_NORM_TYPE = 16
    VX_ENUM_ACCESSOR = 17
    VX_ENUM_ROUND_POLICY = 18
    VX_ENUM_TARGET = 19
    VX_ENUM_BORDER_POLICY = 20
    VX_ENUM_GRAPH_STATE = 21
    VX_ENUM_NONLINEAR = 22
    VX_ENUM_PATTERN = 23
    VX_ENUM_LBP_FORMAT = 24
    VX_ENUM_COMP_METRIC = 25
    VX_ENUM_SCALAR_OPERATION = 32
end

@cenum vx_action_e::Int32 begin
    VX_ACTION_CONTINUE = 0
    VX_ACTION_ABANDON = 1
end

@cenum vx_direction_e::Int32 begin
    VX_INPUT = 0
    VX_OUTPUT = 1
    VX_BIDIRECTIONAL = 2
end

@cenum vx_hint_e::Int32 begin
    VX_HINT_PERFORMANCE_DEFAULT = 0
    VX_HINT_PERFORMANCE_LOW_POWER = 1
    VX_HINT_PERFORMANCE_HIGH_SPEED = 2
end

@cenum vx_directive_e::Int32 begin
    VX_DIRECTIVE_DISABLE_LOGGING = 0
    VX_DIRECTIVE_ENABLE_LOGGING = 1
    VX_DIRECTIVE_DISABLE_PERFORMANCE = 2
    VX_DIRECTIVE_ENABLE_PERFORMANCE = 3
end

@cenum vx_graph_state_e::Int32 begin
    VX_GRAPH_STATE_UNVERIFIED = 0
    VX_GRAPH_STATE_VERIFIED = 1
    VX_GRAPH_STATE_RUNNING = 2
    VX_GRAPH_STATE_ABANDONED = 3
    VX_GRAPH_STATE_COMPLETED = 4
end

@cenum vx_graph_attribute_e::Int32 begin
    VX_GRAPH_NUMNODES = 0
    VX_GRAPH_PERFORMANCE = 1
    VX_GRAPH_NUMPARAMETERS = 2
    VX_GRAPH_STATE = 3
end

@cenum vx_convert_policy_e::Int32 begin
    VX_CONVERT_POLICY_WRAP = 0
    VX_CONVERT_POLICY_SATURATE = 1
end

@cenum vx_df_image_e::Int32 begin
    VX_DF_IMAGE_VIRT = 1414678870
    VX_DF_IMAGE_RGB = 843204434
    VX_DF_IMAGE_RGBX = 1094862674
    VX_DF_IMAGE_NV12 = 842094158
    VX_DF_IMAGE_NV21 = 825382478
    VX_DF_IMAGE_UYVY = 1498831189
    VX_DF_IMAGE_YUYV = 1448695129
    VX_DF_IMAGE_IYUV = 1448433993
    VX_DF_IMAGE_YUV4 = 878073177
    VX_DF_IMAGE_U8 = 942682197
    VX_DF_IMAGE_U16 = 909193301
    VX_DF_IMAGE_S16 = 909193299
    VX_DF_IMAGE_U32 = 842215509
    VX_DF_IMAGE_S32 = 842215507
end

@cenum vx_target_e::Int32 begin
    VX_TARGET_ANY = 0
    VX_TARGET_STRING = 1
    VX_TARGET_VENDOR_BEGIN = 2
end

@cenum vx_reference_attribute_e::Int32 begin
    VX_REFERENCE_COUNT = 0
    VX_REFERENCE_TYPE = 1
    VX_REFERENCE_NAME = 2
end

@cenum vx_context_attribute_e::Int32 begin
    VX_CONTEXT_VENDOR_ID = 0
    VX_CONTEXT_VERSION = 1
    VX_CONTEXT_UNIQUE_KERNELS = 2
    VX_CONTEXT_MODULES = 3
    VX_CONTEXT_REFERENCES = 4
    VX_CONTEXT_IMPLEMENTATION = 5
    VX_CONTEXT_EXTENSIONS_SIZE = 6
    VX_CONTEXT_EXTENSIONS = 7
    VX_CONTEXT_CONVOLUTION_MAX_DIMENSION = 8
    VX_CONTEXT_OPTICAL_FLOW_MAX_WINDOW_DIMENSION = 9
    VX_CONTEXT_IMMEDIATE_BORDER = 10
    VX_CONTEXT_UNIQUE_KERNEL_TABLE = 11
    VX_CONTEXT_IMMEDIATE_BORDER_POLICY = 12
    VX_CONTEXT_NONLINEAR_MAX_DIMENSION = 13
    VX_CONTEXT_MAX_TENSOR_DIMS = 14
end

@cenum vx_kernel_attribute_e::Int32 begin
    VX_KERNEL_PARAMETERS = 0
    VX_KERNEL_NAME = 1
    VX_KERNEL_ENUM = 2
    VX_KERNEL_LOCAL_DATA_SIZE = 3
end

@cenum vx_node_attribute_e::Int32 begin
    VX_NODE_STATUS = 0
    VX_NODE_PERFORMANCE = 1
    VX_NODE_BORDER = 2
    VX_NODE_LOCAL_DATA_SIZE = 3
    VX_NODE_LOCAL_DATA_PTR = 4
    VX_NODE_PARAMETERS = 5
    VX_NODE_IS_REPLICATED = 6
    VX_NODE_REPLICATE_FLAGS = 7
    VX_NODE_VALID_RECT_RESET = 8
end

@cenum vx_parameter_attribute_e::Int32 begin
    VX_PARAMETER_INDEX = 0
    VX_PARAMETER_DIRECTION = 1
    VX_PARAMETER_TYPE = 2
    VX_PARAMETER_STATE = 3
    VX_PARAMETER_REF = 4
end

@cenum vx_image_attribute_e::Int32 begin
    VX_IMAGE_WIDTH = 0
    VX_IMAGE_HEIGHT = 1
    VX_IMAGE_FORMAT = 2
    VX_IMAGE_PLANES = 3
    VX_IMAGE_SPACE = 4
    VX_IMAGE_RANGE = 5
    VX_IMAGE_MEMORY_TYPE = 6
    VX_IMAGE_IS_UNIFORM = 7
    VX_IMAGE_UNIFORM_VALUE = 8
end

@cenum vx_scalar_attribute_e::Int32 begin
    VX_SCALAR_TYPE = 0
end

@cenum vx_scalar_operation_e::Int32 begin
    VX_SCALAR_OP_AND = 0
    VX_SCALAR_OP_OR = 1
    VX_SCALAR_OP_XOR = 2
    VX_SCALAR_OP_NAND = 3
    VX_SCALAR_OP_EQUAL = 4
    VX_SCALAR_OP_NOTEQUAL = 5
    VX_SCALAR_OP_LESS = 6
    VX_SCALAR_OP_LESSEQ = 7
    VX_SCALAR_OP_GREATER = 8
    VX_SCALAR_OP_GREATEREQ = 9
    VX_SCALAR_OP_ADD = 10
    VX_SCALAR_OP_SUBTRACT = 11
    VX_SCALAR_OP_MULTIPLY = 12
    VX_SCALAR_OP_DIVIDE = 13
    VX_SCALAR_OP_MODULUS = 14
    VX_SCALAR_OP_MIN = 15
    VX_SCALAR_OP_MAX = 16
end

@cenum vx_lut_attribute_e::Int32 begin
    VX_LUT_TYPE = 0
    VX_LUT_COUNT = 1
    VX_LUT_SIZE = 2
    VX_LUT_OFFSET = 3
end

@cenum vx_distribution_attribute_e::Int32 begin
    VX_DISTRIBUTION_DIMENSIONS = 0
    VX_DISTRIBUTION_OFFSET = 1
    VX_DISTRIBUTION_RANGE = 2
    VX_DISTRIBUTION_BINS = 3
    VX_DISTRIBUTION_WINDOW = 4
    VX_DISTRIBUTION_SIZE = 5
end

@cenum vx_threshold_type_e::Int32 begin
    VX_THRESHOLD_TYPE_BINARY = 0
    VX_THRESHOLD_TYPE_RANGE = 1
end

@cenum vx_threshold_attribute_e::Int32 begin
    VX_THRESHOLD_TYPE = 0
    VX_THRESHOLD_INPUT_FORMAT = 1
    VX_THRESHOLD_OUTPUT_FORMAT = 2
end

@cenum vx_matrix_attribute_e::Int32 begin
    VX_MATRIX_TYPE = 0
    VX_MATRIX_ROWS = 1
    VX_MATRIX_COLUMNS = 2
    VX_MATRIX_SIZE = 3
    VX_MATRIX_ORIGIN = 4
    VX_MATRIX_PATTERN = 5
end

@cenum vx_convolution_attribute_e::Int32 begin
    VX_CONVOLUTION_ROWS = 0
    VX_CONVOLUTION_COLUMNS = 1
    VX_CONVOLUTION_SCALE = 2
    VX_CONVOLUTION_SIZE = 3
end

@cenum vx_pyramid_attribute_e::Int32 begin
    VX_PYRAMID_LEVELS = 0
    VX_PYRAMID_SCALE = 1
    VX_PYRAMID_WIDTH = 2
    VX_PYRAMID_HEIGHT = 3
    VX_PYRAMID_FORMAT = 4
end

@cenum vx_remap_attribute_e::Int32 begin
    VX_REMAP_SOURCE_WIDTH = 0
    VX_REMAP_SOURCE_HEIGHT = 1
    VX_REMAP_DESTINATION_WIDTH = 2
    VX_REMAP_DESTINATION_HEIGHT = 3
end

@cenum vx_array_attribute_e::Int32 begin
    VX_ARRAY_ITEMTYPE = 0
    VX_ARRAY_NUMITEMS = 1
    VX_ARRAY_CAPACITY = 2
    VX_ARRAY_ITEMSIZE = 3
end

@cenum vx_object_array_attribute_e::Int32 begin
    VX_OBJECT_ARRAY_ITEMTYPE = 0
    VX_OBJECT_ARRAY_NUMITEMS = 1
end

@cenum vx_tensor_attribute_e::Int32 begin
    VX_TENSOR_NUMBER_OF_DIMS = 0
    VX_TENSOR_DIMS = 1
    VX_TENSOR_DATA_TYPE = 2
    VX_TENSOR_FIXED_POINT_POSITION = 3
end

@cenum vx_meta_valid_rect_attribute_e::Int32 begin
    VX_VALID_RECT_CALLBACK = 0
end

@cenum vx_channel_e::Int32 begin
    VX_CHANNEL_0 = 0
    VX_CHANNEL_1 = 1
    VX_CHANNEL_2 = 2
    VX_CHANNEL_3 = 3
    VX_CHANNEL_R = 4
    VX_CHANNEL_G = 5
    VX_CHANNEL_B = 6
    VX_CHANNEL_A = 7
    VX_CHANNEL_Y = 8
    VX_CHANNEL_U = 9
    VX_CHANNEL_V = 10
end

@cenum vx_memory_type_e::Int32 begin
    VX_MEMORY_TYPE_NONE = 0
    VX_MEMORY_TYPE_HOST = 1
end

@cenum vx_interpolation_type_e::Int32 begin
    VX_INTERPOLATION_NEAREST_NEIGHBOR = 0
    VX_INTERPOLATION_BILINEAR = 1
    VX_INTERPOLATION_AREA = 2
end

@cenum vx_non_linear_filter_e::Int32 begin
    VX_NONLINEAR_FILTER_MEDIAN = 0
    VX_NONLINEAR_FILTER_MIN = 1
    VX_NONLINEAR_FILTER_MAX = 2
end

@cenum vx_pattern_e::Int32 begin
    VX_PATTERN_BOX = 0
    VX_PATTERN_CROSS = 1
    VX_PATTERN_DISK = 2
    VX_PATTERN_OTHER = 3
end

@cenum vx_color_space_e::Int32 begin
    VX_COLOR_SPACE_NONE = 0
    VX_COLOR_SPACE_BT601_525 = 1
    VX_COLOR_SPACE_BT601_625 = 2
    VX_COLOR_SPACE_BT709 = 3
    VX_COLOR_SPACE_DEFAULT = 3
end

@cenum vx_channel_range_e::Int32 begin
    VX_CHANNEL_RANGE_FULL = 0
    VX_CHANNEL_RANGE_RESTRICTED = 1
end

@cenum vx_parameter_state_e::Int32 begin
    VX_PARAMETER_STATE_REQUIRED = 0
    VX_PARAMETER_STATE_OPTIONAL = 1
end

@cenum vx_border_e::Int32 begin
    VX_BORDER_UNDEFINED = 0
    VX_BORDER_CONSTANT = 1
    VX_BORDER_REPLICATE = 2
end

@cenum vx_border_policy_e::Int32 begin
    VX_BORDER_POLICY_DEFAULT_TO_UNDEFINED = 0
    VX_BORDER_POLICY_RETURN_ERROR = 1
end

@cenum vx_termination_criteria_e::Int32 begin
    VX_TERM_CRITERIA_ITERATIONS = 0
    VX_TERM_CRITERIA_EPSILON = 1
    VX_TERM_CRITERIA_BOTH = 2
end

@cenum vx_norm_type_e::Int32 begin
    VX_NORM_L1 = 0
    VX_NORM_L2 = 1
end

@cenum vx_delay_attribute_e::Int32 begin
    VX_DELAY_TYPE = 0
    VX_DELAY_SLOTS = 1
end

@cenum vx_accessor_e::Int32 begin
    VX_READ_ONLY = 0
    VX_WRITE_ONLY = 1
    VX_READ_AND_WRITE = 2
end

@cenum vx_round_policy_e::Int32 begin
    VX_ROUND_POLICY_TO_ZERO = 0
    VX_ROUND_POLICY_TO_NEAREST_EVEN = 1
end

@cenum vx_lbp_format_e::Int32 begin
    VX_LBP = 0
    VX_MLBP = 1
    VX_ULBP = 2
end

@cenum vx_comp_metric_e::Int32 begin
    VX_COMPARE_HAMMING = 0
    VX_COMPARE_L1 = 1
    VX_COMPARE_L2 = 2
    VX_COMPARE_CCORR = 3
    VX_COMPARE_L2_NORM = 4
    VX_COMPARE_CCORR_NORM = 5
end

@cenum vx_map_flag_e::Int32 begin
    VX_NOGAP_X = 1
end

@cenum vx_library_e::Int32 begin
    VX_LIBRARY_KHR_BASE = 0
end

@cenum vx_kernel_e::Int32 begin
    VX_KERNEL_COLOR_CONVERT = 1
    VX_KERNEL_CHANNEL_EXTRACT = 2
    VX_KERNEL_CHANNEL_COMBINE = 3
    VX_KERNEL_SOBEL_3x3 = 4
    VX_KERNEL_MAGNITUDE = 5
    VX_KERNEL_PHASE = 6
    VX_KERNEL_SCALE_IMAGE = 7
    VX_KERNEL_TABLE_LOOKUP = 8
    VX_KERNEL_HISTOGRAM = 9
    VX_KERNEL_EQUALIZE_HISTOGRAM = 10
    VX_KERNEL_ABSDIFF = 11
    VX_KERNEL_MEAN_STDDEV = 12
    VX_KERNEL_THRESHOLD = 13
    VX_KERNEL_INTEGRAL_IMAGE = 14
    VX_KERNEL_DILATE_3x3 = 15
    VX_KERNEL_ERODE_3x3 = 16
    VX_KERNEL_MEDIAN_3x3 = 17
    VX_KERNEL_BOX_3x3 = 18
    VX_KERNEL_GAUSSIAN_3x3 = 19
    VX_KERNEL_CUSTOM_CONVOLUTION = 20
    VX_KERNEL_GAUSSIAN_PYRAMID = 21
    VX_KERNEL_ACCUMULATE = 22
    VX_KERNEL_ACCUMULATE_WEIGHTED = 23
    VX_KERNEL_ACCUMULATE_SQUARE = 24
    VX_KERNEL_MINMAXLOC = 25
    VX_KERNEL_CONVERTDEPTH = 26
    VX_KERNEL_CANNY_EDGE_DETECTOR = 27
    VX_KERNEL_AND = 28
    VX_KERNEL_OR = 29
    VX_KERNEL_XOR = 30
    VX_KERNEL_NOT = 31
    VX_KERNEL_MULTIPLY = 32
    VX_KERNEL_ADD = 33
    VX_KERNEL_SUBTRACT = 34
    VX_KERNEL_WARP_AFFINE = 35
    VX_KERNEL_WARP_PERSPECTIVE = 36
    VX_KERNEL_HARRIS_CORNERS = 37
    VX_KERNEL_FAST_CORNERS = 38
    VX_KERNEL_OPTICAL_FLOW_PYR_LK = 39
    VX_KERNEL_REMAP = 40
    VX_KERNEL_HALFSCALE_GAUSSIAN = 41
    VX_KERNEL_MAX_1_0 = 42
    VX_KERNEL_LAPLACIAN_PYRAMID = 42
    VX_KERNEL_LAPLACIAN_RECONSTRUCT = 43
    VX_KERNEL_NON_LINEAR_FILTER = 44
    VX_KERNEL_MAX_1_1 = 45
    VX_KERNEL_MATCH_TEMPLATE = 45
    VX_KERNEL_LBP = 46
    VX_KERNEL_HOUGH_LINES_P = 47
    VX_KERNEL_TENSOR_MULTIPLY = 48
    VX_KERNEL_TENSOR_ADD = 49
    VX_KERNEL_TENSOR_SUBTRACT = 50
    VX_KERNEL_TENSOR_TABLE_LOOKUP = 51
    VX_KERNEL_TENSOR_TRANSPOSE = 52
    VX_KERNEL_TENSOR_CONVERT_DEPTH = 53
    VX_KERNEL_TENSOR_MATRIX_MULTIPLY = 54
    VX_KERNEL_COPY = 55
    VX_KERNEL_NON_MAX_SUPPRESSION = 56
    VX_KERNEL_SCALAR_OPERATION = 57
    VX_KERNEL_HOG_FEATURES = 58
    VX_KERNEL_HOG_CELLS = 59
    VX_KERNEL_BILATERAL_FILTER = 60
    VX_KERNEL_SELECT = 61
    VX_KERNEL_MAX_1_2 = 62
    VX_KERNEL_MAX = 62
    VX_KERNEL_MIN = 63
end

@cenum vx_kernel_nn_ext_e::Int32 begin
    VX_KERNEL_CONVOLUTION_LAYER = 4096
    VX_KERNEL_FULLY_CONNECTED_LAYER = 4097
    VX_KERNEL_POOLING_LAYER = 4098
    VX_KERNEL_SOFTMAX_LAYER = 4099
    VX_KERNEL_NORMALIZATION_LAYER = 4100
    VX_KERNEL_ACTIVATION_LAYER = 4101
    VX_KERNEL_ROI_POOLING_LAYER = 4102
    VX_KERNEL_DECONVOLUTION_LAYER = 4103
end

@cenum vx_nn_enum_e::Int32 begin
    VX_ENUM_NN_ROUNDING_TYPE = 26
    VX_ENUM_NN_POOLING_TYPE = 27
    VX_ENUM_NN_NORMALIZATION_TYPE = 28
    VX_ENUM_NN_ACTIVATION_FUNCTION_TYPE = 29
end

@cenum vx_nn_rounding_type_e::Int32 begin
    VX_NN_DS_SIZE_ROUNDING_FLOOR = 106496
    VX_NN_DS_SIZE_ROUNDING_CEILING = 106497
end

@cenum vx_nn_pooling_type_e::Int32 begin
    VX_NN_POOLING_MAX = 110592
    VX_NN_POOLING_AVG = 110593
end

@cenum vx_nn_norm_type_e::Int32 begin
    VX_NN_NORMALIZATION_SAME_MAP = 114688
    VX_NN_NORMALIZATION_ACROSS_MAPS = 114689
end

@cenum vx_nn_activation_function_e::Int32 begin
    VX_NN_ACTIVATION_LOGISTIC = 118784
    VX_NN_ACTIVATION_HYPERBOLIC_TAN = 118785
    VX_NN_ACTIVATION_RELU = 118786
    VX_NN_ACTIVATION_BRELU = 118787
    VX_NN_ACTIVATION_SOFTRELU = 118788
    VX_NN_ACTIVATION_ABS = 118789
    VX_NN_ACTIVATION_SQUARE = 118790
    VX_NN_ACTIVATION_SQRT = 118791
    VX_NN_ACTIVATION_LINEAR = 118792
end

@cenum vx_nn_type_e::Int32 begin
    VX_TYPE_NN_CONVOLUTION_PARAMS = 37
    VX_TYPE_NN_DECONVOLUTION_PARAMS = 38
    VX_TYPE_NN_ROI_POOL_PARAMS = 39
end

@cenum ago_type_public_e::Int32 begin
    VX_TYPE_FLOAT16 = 15
    VX_TYPE_STRING_AMD = 17
    AGO_TYPE_KEYPOINT_XYS = 1024
    AGO_TYPE_MEANSTDDEV_DATA = 3072
    AGO_TYPE_MINMAXLOC_DATA = 3073
    AGO_TYPE_CANNY_STACK = 3074
    AGO_TYPE_SCALE_MATRIX = 3075
end

@cenum vx_context_attribute_amd_e::Int32 begin
    VX_CONTEXT_ATTRIBUTE_AMD_OPENCL_CONTEXT = 14156033
    VX_CONTEXT_ATTRIBUTE_AMD_AFFINITY = 14156034
    VX_CONTEXT_ATTRIBUTE_AMD_SET_TEXT_MACRO = 14156035
    VX_CONTEXT_ATTRIBUTE_AMD_SET_MERGE_RULE = 14156036
    VX_CONTEXT_MAX_TENSOR_DIMENSIONS = 14156037
    VX_CONTEXT_CL_QUEUE_PROPERTIES = 14156038
end

@cenum vx_kernel_attribute_amd_e::Int32 begin
    VX_KERNEL_ATTRIBUTE_AMD_QUERY_TARGET_SUPPORT = 14156801
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_CODEGEN_CALLBACK = 14156802
    VX_KERNEL_ATTRIBUTE_AMD_NODE_REGEN_CALLBACK = 14156803
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_GLOBAL_WORK_UPDATE_CALLBACK = 14156804
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_BUFFER_ACCESS_ENABLE = 14156805
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_BUFFER_UPDATE_CALLBACK = 14156806
end

@cenum vx_graph_attribute_amd_e::Int32 begin
    VX_GRAPH_ATTRIBUTE_AMD_AFFINITY = 14156289
    VX_GRAPH_ATTRIBUTE_AMD_IMPORT_FROM_TEXT = 14156290
    VX_GRAPH_ATTRIBUTE_AMD_EXPORT_TO_TEXT = 14156291
    VX_GRAPH_ATTRIBUTE_AMD_OPTIMIZER_FLAGS = 14156292
    VX_GRAPH_ATTRIBUTE_AMD_PERFORMANCE_INTERNAL_LAST = 14156293
    VX_GRAPH_ATTRIBUTE_AMD_PERFORMANCE_INTERNAL_AVG = 14156294
    VX_GRAPH_ATTRIBUTE_AMD_PERFORMANCE_INTERNAL_PROFILE = 14156295
    VX_GRAPH_ATTRIBUTE_AMD_OPENCL_COMMAND_QUEUE = 14156296
end

@cenum vx_node_attribute_amd_e::Int32 begin
    VX_NODE_ATTRIBUTE_AMD_AFFINITY = 14156545
    VX_NODE_ATTRIBUTE_AMD_OPENCL_COMMAND_QUEUE = 14156546
end

@cenum vx_image_attribute_amd_e::Int32 begin
    VX_IMAGE_ATTRIBUTE_AMD_OPENCL_BUFFER = 14159617
    VX_IMAGE_ATTRIBUTE_AMD_OPENCL_BUFFER_OFFSET = 14159618
    VX_IMAGE_ATTRIBUTE_AMD_ENABLE_USER_BUFFER_OPENCL = 14159619
    VX_IMAGE_ATTRIBUTE_AMD_OPENCL_BUFFER_STRIDE = 14159620
    VX_IMAGE_ATTRIBUTE_AMD_HOST_BUFFER = 14159621
end

@cenum vx_tensor_attribute_amd_e::Int32 begin
    VX_TENSOR_STRIDE_OPENCL = 14161157
    VX_TENSOR_OFFSET_OPENCL = 14161158
    VX_TENSOR_BUFFER_OPENCL = 14161159
    VX_TENSOR_MEMORY_TYPE = 14161160
end

@cenum vx_array_attribute_amd_e::Int32 begin
    VX_ARRAY_BUFFER_OPENCL = 14159369
    VX_ARRAY_BUFFER_HIP = 14159376
    VX_ARRAY_BUFFER = 14159377
end

@cenum vx_directive_amd_e::Int32 begin
    VX_DIRECTIVE_AMD_READ_ONLY = 13643777
    VX_DIRECTIVE_AMD_COPY_TO_OPENCL = 13643778
    VX_DIRECTIVE_AMD_ENABLE_PROFILE_CAPTURE = 13643779
    VX_DIRECTIVE_AMD_DISABLE_PROFILE_CAPTURE = 13643780
    VX_DIRECTIVE_AMD_DISABLE_OPENCL_FLUSH = 13643781
end

@cenum vx_memory_type_amd_e::Int32 begin
    VX_MEMORY_TYPE_OPENCL = 57346
end

@cenum vx_color_space_amd_e::Int32 begin
    VX_COLOR_SPACE_BT2020 = 13656065
end

@cenum vx_df_image_amd_e::Int32 begin
    VX_DF_IMAGE_U1_AMD = 825241685
    VX_DF_IMAGE_F16_AMD = 909193286
    VX_DF_IMAGE_F32_AMD = 842215494
    VX_DF_IMAGE_F64_AMD = 875966534
    VX_DF_IMAGE_F32x3_AMD = 842216262
end

@cenum vx_ext_import_type_e::Int32 begin
    VX_TYPE_IMPORT = 2068
end

@cenum vx_kernel_attribute_tiling_e::Int32 begin
    VX_KERNEL_INPUT_NEIGHBORHOOD = 525319
    VX_KERNEL_OUTPUT_TILE_BLOCK_SIZE = 525320
    VX_KERNEL_BORDER = 525321
    VX_KERNEL_TILE_MEMORY_SIZE = 525322
end

@cenum vx_node_attribute_tiling_e::Int32 begin
    VX_NODE_INPUT_NEIGHBORHOOD = 525067
    VX_NODE_OUTPUT_TILE_BLOCK_SIZE = 525068
    VX_NODE_TILE_MEMORY_SIZE = 525069
end

@cenum vx_border_tiling_e::Int32 begin
    VX_BORDER_MODE_SELF = 49155
end

@cenum vx_ext_import_types_e::Int32 begin
    VX_IMPORT_TYPE_XML = 0
end

@cenum vx_import_attribute_e::Int32 begin
    VX_IMPORT_ATTRIBUTE_COUNT = 529408
    VX_IMPORT_ATTRIBUTE_TYPE = 529409
end
