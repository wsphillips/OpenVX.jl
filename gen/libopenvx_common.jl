
const VX_MAX_IMPLEMENTATION_NAME = 64
const VX_MAX_KERNEL_NAME = 256
const VX_MAX_LOG_MESSAGE_LEN = 1024
const VX_MAX_REFERENCE_NAME = 64
const INT8_MIN = -128
const INT16_MIN = -32767 - 1
const INT32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT8_MAX = 127
const INT16_MAX = 32767
const INT32_MAX = 2147483647

# Skipping MacroDefinition: INT64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT8_MAX = 255
const UINT16_MAX = 65535
const UINT32_MAX = UInt32(4294967295)

# Skipping MacroDefinition: UINT64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_LEAST8_MIN = -128
const INT_LEAST16_MIN = -32767 - 1
const INT_LEAST32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT_LEAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_LEAST8_MAX = 127
const INT_LEAST16_MAX = 32767
const INT_LEAST32_MAX = 2147483647

# Skipping MacroDefinition: INT_LEAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_LEAST8_MAX = 255
const UINT_LEAST16_MAX = 65535
const UINT_LEAST32_MAX = UInt32(4294967295)

# Skipping MacroDefinition: UINT_LEAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_FAST8_MIN = -128
const INT_FAST16_MIN = -(Int32(9223372036854775807)) - 1
const INT_FAST32_MIN = -(Int32(9223372036854775807)) - 1

# Skipping MacroDefinition: INT_FAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_FAST8_MAX = 127
const INT_FAST16_MAX = Int32(9223372036854775807)
const INT_FAST32_MAX = Int32(9223372036854775807)

# Skipping MacroDefinition: INT_FAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_FAST8_MAX = 255
const UINT_FAST16_MAX = UInt32(18446744073709551615)
const UINT_FAST32_MAX = UInt32(18446744073709551615)

# Skipping MacroDefinition: UINT_FAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INTPTR_MIN = -(Int32(9223372036854775807)) - 1
const INTPTR_MAX = Int32(9223372036854775807)
const UINTPTR_MAX = UInt32(18446744073709551615)

# Skipping MacroDefinition: INTMAX_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )
# Skipping MacroDefinition: INTMAX_MAX ( __INT64_C ( 9223372036854775807 ) )
# Skipping MacroDefinition: UINTMAX_MAX ( __UINT64_C ( 18446744073709551615 ) )

const PTRDIFF_MIN = -(Int32(9223372036854775807)) - 1
const PTRDIFF_MAX = Int32(9223372036854775807)
const SIG_ATOMIC_MIN = -2147483647 - 1
const SIG_ATOMIC_MAX = 2147483647
const SIZE_MAX = UInt32(18446744073709551615)
const WCHAR_MIN = __WCHAR_MIN
const WCHAR_MAX = __WCHAR_MAX
const WINT_MIN = UInt32(0)
const WINT_MAX = UInt32(4294967295)

# Skipping MacroDefinition: INT8_C ( c ) c
# Skipping MacroDefinition: INT16_C ( c ) c
# Skipping MacroDefinition: INT32_C ( c ) c
# Skipping MacroDefinition: INT64_C ( c ) c ## L
# Skipping MacroDefinition: UINT8_C ( c ) c
# Skipping MacroDefinition: UINT16_C ( c ) c
# Skipping MacroDefinition: UINT32_C ( c ) c ## U
# Skipping MacroDefinition: UINT64_C ( c ) c ## UL
# Skipping MacroDefinition: INTMAX_C ( c ) c ## L
# Skipping MacroDefinition: UINTMAX_C ( c ) c ## UL
# Skipping MacroDefinition: NULL ( ( void * ) 0 )
# Skipping MacroDefinition: offsetof ( t , d ) __builtin_offsetof ( t , d )

const VX_VENDOR_MASK = 0xfff00000
const VX_TYPE_MASK = 0x000fff00
const VX_LIBRARY_MASK = 0x000ff000
const VX_KERNEL_MASK = Float32(0x000000ff)
const VX_ATTRIBUTE_ID_MASK = Float32(0x0000000f)
const VX_ENUM_TYPE_MASK = 0x000ff000
const VX_ENUM_MASK = Float32(0x000000ff)

# Skipping MacroDefinition: VX_VENDOR ( e ) ( ( ( vx_uint32 ) e & VX_VENDOR_MASK ) >> 20 )
# Skipping MacroDefinition: VX_TYPE ( e ) ( ( ( vx_uint32 ) e & VX_TYPE_MASK ) >> 8 )
# Skipping MacroDefinition: VX_ENUM_TYPE ( e ) ( ( ( vx_uint32 ) e & VX_ENUM_TYPE_MASK ) >> 12 )
# Skipping MacroDefinition: VX_LIBRARY ( e ) ( ( ( vx_uint32 ) e & VX_LIBRARY_MASK ) >> 12 )
# Skipping MacroDefinition: VX_DF_IMAGE ( a , b , c , d ) ( ( a ) | ( b << 8 ) | ( c << 16 ) | ( d << 24 ) )
# Skipping MacroDefinition: VX_ATTRIBUTE_BASE ( vendor , object ) ( ( ( vendor ) << 20 ) | ( object << 8 ) )
# Skipping MacroDefinition: VX_KERNEL_BASE ( vendor , lib ) ( ( ( vendor ) << 20 ) | ( lib << 12 ) )
# Skipping MacroDefinition: VX_ENUM_BASE ( vendor , id ) ( ( ( vendor ) << 20 ) | ( id << 12 ) )

const VX_FMT_REF = "%p"
const VX_FMT_SIZE = "%zu"
const VX_SCALE_UNITY = UInt32(1024)

# Skipping MacroDefinition: VX_IMAGEPATCH_ADDR_INIT { 0u , 0u , 0 , 0 , 0u , 0u , 0u , 0u }
# Skipping MacroDefinition: VX_PERF_INIT { 0ul , 0ul , 0ul , 0ul , 0ul , 0ul }

const VX_SCALE_PYRAMID_HALF = Float32(0.5)

# Skipping MacroDefinition: VX_SCALE_PYRAMID_ORB ( ( vx_float32 ) 0.8408964f )
# Skipping MacroDefinition: vxFormatArrayPointer ( ptr , index , stride ) ( & ( ( ( vx_uint8 * ) ( ptr ) ) [ ( index ) * ( stride ) ] ) )
# Skipping MacroDefinition: vxArrayItem ( type , ptr , index , stride ) ( * ( type * ) ( vxFormatArrayPointer ( ( ptr ) , ( index ) , ( stride ) ) ) )
# Skipping MacroDefinition: VX_VERSION_MAJOR ( x ) ( ( x & 0xFF ) << 8 )
# Skipping MacroDefinition: VX_VERSION_MINOR ( x ) ( ( x & 0xFF ) << 0 )
# Skipping MacroDefinition: VX_VERSION_1_0 ( VX_VERSION_MAJOR ( 1 ) | VX_VERSION_MINOR ( 0 ) )
# Skipping MacroDefinition: VX_VERSION_1_1 ( VX_VERSION_MAJOR ( 1 ) | VX_VERSION_MINOR ( 1 ) )
# Skipping MacroDefinition: VX_VERSION_1_2 ( VX_VERSION_MAJOR ( 1 ) | VX_VERSION_MINOR ( 2 ) )

const VX_VERSION = VX_VERSION_1_2

@cenum vx_vendor_id_e::UInt32 begin
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


const __u_char = Cuchar
const __u_short = UInt16
const __u_int = UInt32
const __u_long = Culong
const __int8_t = UInt8
const __uint8_t = Cuchar
const __int16_t = Int16
const __uint16_t = UInt16
const __int32_t = Cint
const __uint32_t = UInt32
const __int64_t = Clong
const __uint64_t = Culong
const __int_least8_t = __int8_t
const __uint_least8_t = __uint8_t
const __int_least16_t = __int16_t
const __uint_least16_t = __uint16_t
const __int_least32_t = __int32_t
const __uint_least32_t = __uint32_t
const __int_least64_t = __int64_t
const __uint_least64_t = __uint64_t
const __quad_t = Clong
const __u_quad_t = Culong
const __intmax_t = Clong
const __uintmax_t = Culong
const __dev_t = Culong
const __uid_t = UInt32
const __gid_t = UInt32
const __ino_t = Culong
const __ino64_t = Culong
const __mode_t = UInt32
const __nlink_t = Culong
const __off_t = Clong
const __off64_t = Clong
const __pid_t = Cint
const __fsid_t = __fsid_t
const __clock_t = Clong
const __rlim_t = Culong
const __rlim64_t = Culong
const __id_t = UInt32
const __time_t = Clong
const __useconds_t = UInt32
const __suseconds_t = Clong
const __daddr_t = Cint
const __key_t = Cint
const __clockid_t = Cint
const __timer_t = Ptr{Cvoid}
const __blksize_t = Clong
const __blkcnt_t = Clong
const __blkcnt64_t = Clong
const __fsblkcnt_t = Culong
const __fsblkcnt64_t = Culong
const __fsfilcnt_t = Culong
const __fsfilcnt64_t = Culong
const __fsword_t = Clong
const __ssize_t = Clong
const __syscall_slong_t = Clong
const __syscall_ulong_t = Culong
const __loff_t = __off64_t
const __caddr_t = Cstring
const __intptr_t = Clong
const __socklen_t = UInt32
const __sig_atomic_t = Cint
const int8_t = __int8_t
const int16_t = __int16_t
const int32_t = __int32_t
const int64_t = __int64_t
const uint8_t = __uint8_t
const uint16_t = __uint16_t
const uint32_t = __uint32_t
const uint64_t = __uint64_t
const int_least8_t = __int_least8_t
const int_least16_t = __int_least16_t
const int_least32_t = __int_least32_t
const int_least64_t = __int_least64_t
const uint_least8_t = __uint_least8_t
const uint_least16_t = __uint_least16_t
const uint_least32_t = __uint_least32_t
const uint_least64_t = __uint_least64_t
const int_fast8_t = UInt8
const int_fast16_t = Clong
const int_fast32_t = Clong
const int_fast64_t = Clong
const uint_fast8_t = Cuchar
const uint_fast16_t = Culong
const uint_fast32_t = Culong
const uint_fast64_t = Culong
const intptr_t = Clong
const uintptr_t = Culong
const intmax_t = __intmax_t
const uintmax_t = __uintmax_t
const ptrdiff_t = Clong
const size_t = Culong
const wchar_t = Cint
const max_align_t = max_align_t
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
const _vx_reference = Cvoid
const vx_reference = Ptr{_vx_reference}
const vx_enum = Int32
const vx_size = Csize_t
const vx_df_image = UInt32
const vx_map_id = Csize_t
const _vx_scalar = Cvoid
const vx_scalar = Ptr{_vx_scalar}
const _vx_image = Cvoid
const vx_image = Ptr{_vx_image}
const _vx_kernel = Cvoid
const vx_kernel = Ptr{_vx_kernel}
const _vx_parameter = Cvoid
const vx_parameter = Ptr{_vx_parameter}
const _vx_node = Cvoid
const vx_node = Ptr{_vx_node}
const _vx_graph = Cvoid
const vx_graph = Ptr{_vx_graph}
const _vx_context = Cvoid
const vx_context = Ptr{_vx_context}
const _vx_delay = Cvoid
const vx_delay = Ptr{_vx_delay}
const _vx_lut = Cvoid
const vx_lut = Ptr{_vx_lut}
const _vx_distribution = Cvoid
const vx_distribution = Ptr{_vx_distribution}
const _vx_matrix = Cvoid
const vx_matrix = Ptr{_vx_matrix}
const _vx_pyramid = Cvoid
const vx_pyramid = Ptr{_vx_pyramid}
const _vx_threshold = Cvoid
const vx_threshold = Ptr{_vx_threshold}
const _vx_convolution = Cvoid
const vx_convolution = Ptr{_vx_convolution}
const _vx_remap = Cvoid
const vx_remap = Ptr{_vx_remap}
const _vx_array = Cvoid
const vx_array = Ptr{_vx_array}
const _vx_object_array = Cvoid
const vx_object_array = Ptr{_vx_object_array}
const _vx_tensor_t = Cvoid
const vx_tensor = Ptr{_vx_tensor_t}

@cenum _vx_bool_e::UInt32 begin
    vx_false_e = 0
    vx_true_e = 1
end


const vx_bool_e = _vx_bool_e
const vx_bool = vx_enum
const _vx_meta_format = Cvoid
const vx_meta_format = Ptr{_vx_meta_format}

@cenum vx_type_e::UInt32 begin
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


const vx_status = vx_enum
const vx_action = vx_enum
const vx_nodecomplete_f = Ptr{Cvoid}

@cenum vx_enum_e::UInt32 begin
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

@cenum vx_action_e::UInt32 begin
    VX_ACTION_CONTINUE = 0
    VX_ACTION_ABANDON = 1
end

@cenum vx_direction_e::UInt32 begin
    VX_INPUT = 0
    VX_OUTPUT = 1
    VX_BIDIRECTIONAL = 2
end

@cenum vx_hint_e::UInt32 begin
    VX_HINT_PERFORMANCE_DEFAULT = 0
    VX_HINT_PERFORMANCE_LOW_POWER = 1
    VX_HINT_PERFORMANCE_HIGH_SPEED = 2
end

@cenum vx_directive_e::UInt32 begin
    VX_DIRECTIVE_DISABLE_LOGGING = 0
    VX_DIRECTIVE_ENABLE_LOGGING = 1
    VX_DIRECTIVE_DISABLE_PERFORMANCE = 2
    VX_DIRECTIVE_ENABLE_PERFORMANCE = 3
end

@cenum vx_graph_state_e::UInt32 begin
    VX_GRAPH_STATE_UNVERIFIED = 0
    VX_GRAPH_STATE_VERIFIED = 1
    VX_GRAPH_STATE_RUNNING = 2
    VX_GRAPH_STATE_ABANDONED = 3
    VX_GRAPH_STATE_COMPLETED = 4
end

@cenum vx_graph_attribute_e::UInt32 begin
    VX_GRAPH_NUMNODES = 0
    VX_GRAPH_PERFORMANCE = 1
    VX_GRAPH_NUMPARAMETERS = 2
    VX_GRAPH_STATE = 3
end

@cenum vx_convert_policy_e::UInt32 begin
    VX_CONVERT_POLICY_WRAP = 0
    VX_CONVERT_POLICY_SATURATE = 1
end

@cenum vx_df_image_e::UInt32 begin
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

@cenum vx_target_e::UInt32 begin
    VX_TARGET_ANY = 0
    VX_TARGET_STRING = 1
    VX_TARGET_VENDOR_BEGIN = 2
end

@cenum vx_reference_attribute_e::UInt32 begin
    VX_REFERENCE_COUNT = 0
    VX_REFERENCE_TYPE = 1
    VX_REFERENCE_NAME = 2
end

@cenum vx_context_attribute_e::UInt32 begin
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

@cenum vx_kernel_attribute_e::UInt32 begin
    VX_KERNEL_PARAMETERS = 0
    VX_KERNEL_NAME = 1
    VX_KERNEL_ENUM = 2
    VX_KERNEL_LOCAL_DATA_SIZE = 3
end

@cenum vx_node_attribute_e::UInt32 begin
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

@cenum vx_parameter_attribute_e::UInt32 begin
    VX_PARAMETER_INDEX = 0
    VX_PARAMETER_DIRECTION = 1
    VX_PARAMETER_TYPE = 2
    VX_PARAMETER_STATE = 3
    VX_PARAMETER_REF = 4
end

@cenum vx_image_attribute_e::UInt32 begin
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

@cenum vx_scalar_attribute_e::UInt32 begin
    VX_SCALAR_TYPE = 0
end

@cenum vx_scalar_operation_e::UInt32 begin
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

@cenum vx_lut_attribute_e::UInt32 begin
    VX_LUT_TYPE = 0
    VX_LUT_COUNT = 1
    VX_LUT_SIZE = 2
    VX_LUT_OFFSET = 3
end

@cenum vx_distribution_attribute_e::UInt32 begin
    VX_DISTRIBUTION_DIMENSIONS = 0
    VX_DISTRIBUTION_OFFSET = 1
    VX_DISTRIBUTION_RANGE = 2
    VX_DISTRIBUTION_BINS = 3
    VX_DISTRIBUTION_WINDOW = 4
    VX_DISTRIBUTION_SIZE = 5
end

@cenum vx_threshold_type_e::UInt32 begin
    VX_THRESHOLD_TYPE_BINARY = 0
    VX_THRESHOLD_TYPE_RANGE = 1
end

@cenum vx_threshold_attribute_e::UInt32 begin
    VX_THRESHOLD_TYPE = 0
    VX_THRESHOLD_INPUT_FORMAT = 1
    VX_THRESHOLD_OUTPUT_FORMAT = 2
end

@cenum vx_matrix_attribute_e::UInt32 begin
    VX_MATRIX_TYPE = 0
    VX_MATRIX_ROWS = 1
    VX_MATRIX_COLUMNS = 2
    VX_MATRIX_SIZE = 3
    VX_MATRIX_ORIGIN = 4
    VX_MATRIX_PATTERN = 5
end

@cenum vx_convolution_attribute_e::UInt32 begin
    VX_CONVOLUTION_ROWS = 0
    VX_CONVOLUTION_COLUMNS = 1
    VX_CONVOLUTION_SCALE = 2
    VX_CONVOLUTION_SIZE = 3
end

@cenum vx_pyramid_attribute_e::UInt32 begin
    VX_PYRAMID_LEVELS = 0
    VX_PYRAMID_SCALE = 1
    VX_PYRAMID_WIDTH = 2
    VX_PYRAMID_HEIGHT = 3
    VX_PYRAMID_FORMAT = 4
end

@cenum vx_remap_attribute_e::UInt32 begin
    VX_REMAP_SOURCE_WIDTH = 0
    VX_REMAP_SOURCE_HEIGHT = 1
    VX_REMAP_DESTINATION_WIDTH = 2
    VX_REMAP_DESTINATION_HEIGHT = 3
end

@cenum vx_array_attribute_e::UInt32 begin
    VX_ARRAY_ITEMTYPE = 0
    VX_ARRAY_NUMITEMS = 1
    VX_ARRAY_CAPACITY = 2
    VX_ARRAY_ITEMSIZE = 3
end

@cenum vx_object_array_attribute_e::UInt32 begin
    VX_OBJECT_ARRAY_ITEMTYPE = 0
    VX_OBJECT_ARRAY_NUMITEMS = 1
end

@cenum vx_tensor_attribute_e::UInt32 begin
    VX_TENSOR_NUMBER_OF_DIMS = 0
    VX_TENSOR_DIMS = 1
    VX_TENSOR_DATA_TYPE = 2
    VX_TENSOR_FIXED_POINT_POSITION = 3
end

@cenum vx_meta_valid_rect_attribute_e::UInt32 begin
    VX_VALID_RECT_CALLBACK = 0
end

@cenum vx_channel_e::UInt32 begin
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

@cenum vx_memory_type_e::UInt32 begin
    VX_MEMORY_TYPE_NONE = 0
    VX_MEMORY_TYPE_HOST = 1
end

@cenum vx_interpolation_type_e::UInt32 begin
    VX_INTERPOLATION_NEAREST_NEIGHBOR = 0
    VX_INTERPOLATION_BILINEAR = 1
    VX_INTERPOLATION_AREA = 2
end

@cenum vx_non_linear_filter_e::UInt32 begin
    VX_NONLINEAR_FILTER_MEDIAN = 0
    VX_NONLINEAR_FILTER_MIN = 1
    VX_NONLINEAR_FILTER_MAX = 2
end

@cenum vx_pattern_e::UInt32 begin
    VX_PATTERN_BOX = 0
    VX_PATTERN_CROSS = 1
    VX_PATTERN_DISK = 2
    VX_PATTERN_OTHER = 3
end

@cenum vx_color_space_e::UInt32 begin
    VX_COLOR_SPACE_NONE = 0
    VX_COLOR_SPACE_BT601_525 = 1
    VX_COLOR_SPACE_BT601_625 = 2
    VX_COLOR_SPACE_BT709 = 3
    VX_COLOR_SPACE_DEFAULT = 3
end

@cenum vx_channel_range_e::UInt32 begin
    VX_CHANNEL_RANGE_FULL = 0
    VX_CHANNEL_RANGE_RESTRICTED = 1
end

@cenum vx_parameter_state_e::UInt32 begin
    VX_PARAMETER_STATE_REQUIRED = 0
    VX_PARAMETER_STATE_OPTIONAL = 1
end

@cenum vx_border_e::UInt32 begin
    VX_BORDER_UNDEFINED = 0
    VX_BORDER_CONSTANT = 1
    VX_BORDER_REPLICATE = 2
end

@cenum vx_border_policy_e::UInt32 begin
    VX_BORDER_POLICY_DEFAULT_TO_UNDEFINED = 0
    VX_BORDER_POLICY_RETURN_ERROR = 1
end

@cenum vx_termination_criteria_e::UInt32 begin
    VX_TERM_CRITERIA_ITERATIONS = 0
    VX_TERM_CRITERIA_EPSILON = 1
    VX_TERM_CRITERIA_BOTH = 2
end

@cenum vx_norm_type_e::UInt32 begin
    VX_NORM_L1 = 0
    VX_NORM_L2 = 1
end

@cenum vx_delay_attribute_e::UInt32 begin
    VX_DELAY_TYPE = 0
    VX_DELAY_SLOTS = 1
end

@cenum vx_accessor_e::UInt32 begin
    VX_READ_ONLY = 0
    VX_WRITE_ONLY = 1
    VX_READ_AND_WRITE = 2
end

@cenum vx_round_policy_e::UInt32 begin
    VX_ROUND_POLICY_TO_ZERO = 0
    VX_ROUND_POLICY_TO_NEAREST_EVEN = 1
end

@cenum vx_lbp_format_e::UInt32 begin
    VX_LBP = 0
    VX_MLBP = 1
    VX_ULBP = 2
end

@cenum vx_comp_metric_e::UInt32 begin
    VX_COMPARE_HAMMING = 0
    VX_COMPARE_L1 = 1
    VX_COMPARE_L2 = 2
    VX_COMPARE_CCORR = 3
    VX_COMPARE_L2_NORM = 4
    VX_COMPARE_CCORR_NORM = 5
end


struct _vx_imagepatch_addressing_t
    dim_x::vx_uint32
    dim_y::vx_uint32
    stride_x::vx_int32
    stride_y::vx_int32
    scale_x::vx_uint32
    scale_y::vx_uint32
    step_x::vx_uint32
    step_y::vx_uint32
end

const vx_imagepatch_addressing_t = _vx_imagepatch_addressing_t

struct _vx_perf_t
    tmp::vx_uint64
    beg::vx_uint64
    _end::vx_uint64
    sum::vx_uint64
    avg::vx_uint64
    min::vx_uint64
    num::vx_uint64
    max::vx_uint64
end

const vx_perf_t = _vx_perf_t

struct _vx_hough_lines_p_t
    rho::vx_float32
    theta::vx_float32
    threshold::vx_int32
    line_length::vx_int32
    line_gap::vx_int32
    theta_max::vx_float32
    theta_min::vx_float32
end

const vx_hough_lines_p_t = _vx_hough_lines_p_t

struct _vx_line2d_t
    start_x::vx_float32
    start_y::vx_float32
    end_x::vx_float32
    end_y::vx_float32
end

const vx_line2d_t = _vx_line2d_t

struct _vx_tensor_matrix_multiply_params_t
    transpose_input1::vx_bool
    transpose_input2::vx_bool
    transpose_input3::vx_bool
end

const vx_tensor_matrix_multiply_params_t = _vx_tensor_matrix_multiply_params_t

struct _vx_kernel_info_t
    enumeration::vx_enum
    name::NTuple{256, vx_char}
end

const vx_kernel_info_t = _vx_kernel_info_t

struct _vx_keypoint_t
    x::vx_int32
    y::vx_int32
    strength::vx_float32
    scale::vx_float32
    orientation::vx_float32
    tracking_status::vx_int32
    error::vx_float32
end

const vx_keypoint_t = _vx_keypoint_t

struct _vx_rectangle_t
    start_x::vx_uint32
    start_y::vx_uint32
    end_x::vx_uint32
    end_y::vx_uint32
end

const vx_rectangle_t = _vx_rectangle_t

struct _vx_coordinates2d_t
    x::vx_uint32
    y::vx_uint32
end

const vx_coordinates2d_t = _vx_coordinates2d_t

struct _vx_coordinates2df_t
    x::vx_float32
    y::vx_float32
end

const vx_coordinates2df_t = _vx_coordinates2df_t

struct _vx_coordinates3d_t
    x::vx_uint32
    y::vx_uint32
    z::vx_uint32
end

const vx_coordinates3d_t = _vx_coordinates3d_t

struct _vx_pixel_value_t
    reserved::NTuple{16, vx_uint8}
end

const vx_pixel_value_t = _vx_pixel_value_t
const vx_hog_t = vx_hog_t

struct _vx_border_t
    mode::vx_enum
    constant_value::vx_pixel_value_t
end

const vx_border_t = _vx_border_t
const vx_publish_kernels_f = Ptr{Cvoid}
const vx_unpublish_kernels_f = Ptr{Cvoid}
const vx_kernel_f = Ptr{Cvoid}
const vx_kernel_initialize_f = Ptr{Cvoid}
const vx_kernel_deinitialize_f = Ptr{Cvoid}
const vx_kernel_validate_f = Ptr{Cvoid}
const vx_kernel_image_valid_rectangle_f = Ptr{Cvoid}
const vx_log_callback_f = Ptr{Cvoid}

@cenum vx_map_flag_e::UInt32 begin
    VX_NOGAP_X = 1
end

@cenum vx_library_e::UInt32 begin
    VX_LIBRARY_KHR_BASE = 0
end

@cenum vx_kernel_e::UInt32 begin
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


const VX_TYPE_SCALAR_MAX = VX_TYPE_BOOL + 1
const vx_border_mode_e = vx_border_e
const vx_border_mode_policy_e = vx_border_policy_e
const vx_border_mode_t = vx_border_t
const VX_ENUM_BORDER_MODE = VX_ENUM_BORDER
const VX_BORDER_MODE_POLICY = VX_BORDER_POLICY
const VX_BORDER_MODE_UNDEFINED = VX_BORDER_UNDEFINED
const VX_BORDER_MODE_CONSTANT = VX_BORDER_CONSTANT
const VX_BORDER_MODE_REPLICATE = VX_BORDER_REPLICATE
const VX_BORDER_MODE_UNSUPPORTED_POLICY_DEFAULT_TO_UNDEFINED = VX_BORDER_POLICY_DEFAULT_TO_UNDEFINED
const VX_BORDER_MODE_UNSUPPORTED_POLICY_RETURN_ERROR = VX_BORDER_POLICY_RETURN_ERROR
const VX_REF_ATTRIBUTE_COUNT = VX_REFERENCE_COUNT
const VX_REF_ATTRIBUTE_TYPE = VX_REFERENCE_TYPE
const VX_REF_ATTRIBUTE_NAME = VX_REFERENCE_NAME
const VX_CONTEXT_ATTRIBUTE_VENDOR_ID = VX_CONTEXT_VENDOR_ID
const VX_CONTEXT_ATTRIBUTE_VERSION = VX_CONTEXT_VERSION
const VX_CONTEXT_ATTRIBUTE_UNIQUE_KERNELS = VX_CONTEXT_UNIQUE_KERNELS
const VX_CONTEXT_ATTRIBUTE_MODULES = VX_CONTEXT_MODULES
const VX_CONTEXT_ATTRIBUTE_REFERENCES = VX_CONTEXT_REFERENCES
const VX_CONTEXT_ATTRIBUTE_IMPLEMENTATION = VX_CONTEXT_IMPLEMENTATION
const VX_CONTEXT_ATTRIBUTE_EXTENSIONS_SIZE = VX_CONTEXT_EXTENSIONS_SIZE
const VX_CONTEXT_ATTRIBUTE_EXTENSIONS = VX_CONTEXT_EXTENSIONS
const VX_CONTEXT_ATTRIBUTE_CONVOLUTION_MAXIMUM_DIMENSION = VX_CONTEXT_CONVOLUTION_MAX_DIMENSION
const VX_CONTEXT_ATTRIBUTE_OPTICAL_FLOW_WINDOW_MAXIMUM_DIMENSION = VX_CONTEXT_OPTICAL_FLOW_MAX_WINDOW_DIMENSION
const VX_CONTEXT_ATTRIBUTE_IMMEDIATE_BORDER_MODE = VX_CONTEXT_IMMEDIATE_BORDER
const VX_CONTEXT_ATTRIBUTE_UNIQUE_KERNEL_TABLE = VX_CONTEXT_UNIQUE_KERNEL_TABLE
const VX_KERNEL_ATTRIBUTE_PARAMETERS = VX_KERNEL_PARAMETERS
const VX_KERNEL_ATTRIBUTE_NAME = VX_KERNEL_NAME
const VX_KERNEL_ATTRIBUTE_ENUM = VX_KERNEL_ENUM
const VX_KERNEL_ATTRIBUTE_LOCAL_DATA_SIZE = VX_KERNEL_LOCAL_DATA_SIZE

# Skipping MacroDefinition: VX_KERNEL_ATTRIBUTE_LOCAL_DATA_PTR ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_KERNEL ) + 0x4 )

const VX_NODE_ATTRIBUTE_STATUS = VX_NODE_STATUS
const VX_NODE_ATTRIBUTE_PERFORMANCE = VX_NODE_PERFORMANCE
const VX_NODE_ATTRIBUTE_BORDER_MODE = VX_NODE_BORDER
const VX_NODE_ATTRIBUTE_LOCAL_DATA_SIZE = VX_NODE_LOCAL_DATA_SIZE
const VX_NODE_ATTRIBUTE_LOCAL_DATA_PTR = VX_NODE_LOCAL_DATA_PTR
const VX_PARAMETER_ATTRIBUTE_INDEX = VX_PARAMETER_INDEX
const VX_PARAMETER_ATTRIBUTE_DIRECTION = VX_PARAMETER_DIRECTION
const VX_PARAMETER_ATTRIBUTE_TYPE = VX_PARAMETER_TYPE
const VX_PARAMETER_ATTRIBUTE_STATE = VX_PARAMETER_STATE
const VX_PARAMETER_ATTRIBUTE_REF = VX_PARAMETER_REF
const VX_IMAGE_ATTRIBUTE_WIDTH = VX_IMAGE_WIDTH
const VX_IMAGE_ATTRIBUTE_HEIGHT = VX_IMAGE_HEIGHT
const VX_IMAGE_ATTRIBUTE_FORMAT = VX_IMAGE_FORMAT
const VX_IMAGE_ATTRIBUTE_PLANES = VX_IMAGE_PLANES
const VX_IMAGE_ATTRIBUTE_SPACE = VX_IMAGE_SPACE
const VX_IMAGE_ATTRIBUTE_RANGE = VX_IMAGE_RANGE
const VX_IMAGE_ATTRIBUTE_SIZE = VX_IMAGE_SIZE
const VX_SCALAR_ATTRIBUTE_TYPE = VX_SCALAR_TYPE
const VX_GRAPH_ATTRIBUTE_NUMNODES = VX_GRAPH_NUMNODES

# Skipping MacroDefinition: VX_GRAPH_ATTRIBUTE_STATUS ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_GRAPH ) + 0x1 )

const VX_GRAPH_ATTRIBUTE_PERFORMANCE = VX_GRAPH_PERFORMANCE
const VX_GRAPH_ATTRIBUTE_NUMPARAMETERS = VX_GRAPH_NUMPARAMETERS
const VX_LUT_ATTRIBUTE_TYPE = VX_LUT_TYPE
const VX_LUT_ATTRIBUTE_COUNT = VX_LUT_COUNT
const VX_LUT_ATTRIBUTE_SIZE = VX_LUT_SIZE
const VX_DISTRIBUTION_ATTRIBUTE_DIMENSIONS = VX_DISTRIBUTION_DIMENSIONS
const VX_DISTRIBUTION_ATTRIBUTE_OFFSET = VX_DISTRIBUTION_OFFSET
const VX_DISTRIBUTION_ATTRIBUTE_RANGE = VX_DISTRIBUTION_RANGE
const VX_DISTRIBUTION_ATTRIBUTE_BINS = VX_DISTRIBUTION_BINS
const VX_DISTRIBUTION_ATTRIBUTE_WINDOW = VX_DISTRIBUTION_WINDOW
const VX_DISTRIBUTION_ATTRIBUTE_SIZE = VX_DISTRIBUTION_SIZE
const VX_THRESHOLD_ATTRIBUTE_TYPE = VX_THRESHOLD_TYPE
const VX_THRESHOLD_ATTRIBUTE_THRESHOLD_VALUE = VX_THRESHOLD_THRESHOLD_VALUE
const VX_THRESHOLD_ATTRIBUTE_THRESHOLD_LOWER = VX_THRESHOLD_THRESHOLD_LOWER
const VX_THRESHOLD_ATTRIBUTE_THRESHOLD_UPPER = VX_THRESHOLD_THRESHOLD_UPPER
const VX_THRESHOLD_ATTRIBUTE_TRUE_VALUE = VX_THRESHOLD_TRUE_VALUE
const VX_THRESHOLD_ATTRIBUTE_FALSE_VALUE = VX_THRESHOLD_FALSE_VALUE
const VX_THRESHOLD_ATTRIBUTE_DATA_TYPE = VX_THRESHOLD_DATA_TYPE
const VX_MATRIX_ATTRIBUTE_TYPE = VX_MATRIX_TYPE
const VX_MATRIX_ATTRIBUTE_ROWS = VX_MATRIX_ROWS
const VX_MATRIX_ATTRIBUTE_COLUMNS = VX_MATRIX_COLUMNS
const VX_MATRIX_ATTRIBUTE_SIZE = VX_MATRIX_SIZE
const VX_CONVOLUTION_ATTRIBUTE_ROWS = VX_CONVOLUTION_ROWS
const VX_CONVOLUTION_ATTRIBUTE_COLUMNS = VX_CONVOLUTION_COLUMNS
const VX_CONVOLUTION_ATTRIBUTE_SCALE = VX_CONVOLUTION_SCALE
const VX_CONVOLUTION_ATTRIBUTE_SIZE = VX_CONVOLUTION_SIZE
const VX_PYRAMID_ATTRIBUTE_LEVELS = VX_PYRAMID_LEVELS
const VX_PYRAMID_ATTRIBUTE_SCALE = VX_PYRAMID_SCALE
const VX_PYRAMID_ATTRIBUTE_WIDTH = VX_PYRAMID_WIDTH
const VX_PYRAMID_ATTRIBUTE_HEIGHT = VX_PYRAMID_HEIGHT
const VX_PYRAMID_ATTRIBUTE_FORMAT = VX_PYRAMID_FORMAT
const VX_REMAP_ATTRIBUTE_SOURCE_WIDTH = VX_REMAP_SOURCE_WIDTH
const VX_REMAP_ATTRIBUTE_SOURCE_HEIGHT = VX_REMAP_SOURCE_HEIGHT
const VX_REMAP_ATTRIBUTE_DESTINATION_WIDTH = VX_REMAP_DESTINATION_WIDTH
const VX_REMAP_ATTRIBUTE_DESTINATION_HEIGHT = VX_REMAP_DESTINATION_HEIGHT
const VX_ARRAY_ATTRIBUTE_ITEMTYPE = VX_ARRAY_ITEMTYPE
const VX_ARRAY_ATTRIBUTE_NUMITEMS = VX_ARRAY_NUMITEMS
const VX_ARRAY_ATTRIBUTE_CAPACITY = VX_ARRAY_CAPACITY
const VX_ARRAY_ATTRIBUTE_ITEMSIZE = VX_ARRAY_ITEMSIZE
const VX_DELAY_ATTRIBUTE_TYPE = VX_DELAY_TYPE
const VX_DELAY_ATTRIBUTE_SLOTS = VX_DELAY_SLOTS
const VX_INTERPOLATION_TYPE_AREA = VX_INTERPOLATION_AREA
const VX_INTERPOLATION_TYPE_BILINEAR = VX_INTERPOLATION_BILINEAR
const VX_INTERPOLATION_TYPE_NEAREST_NEIGHBOR = VX_INTERPOLATION_NEAREST_NEIGHBOR

# Skipping MacroDefinition: VX_IMAGE_SIZE ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_IMAGE ) + 0x6 )
# Skipping MacroDefinition: VX_META_FORMAT_ATTRIBUTE_DELTA_RECTANGLE ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_META_FORMAT ) + 0x0 )
# Skipping MacroDefinition: VX_HINT_SERIALIZE ( VX_ENUM_BASE ( VX_ID_KHRONOS , VX_ENUM_HINT ) + 0x0 )

const vx_import_type_e = vx_memory_type_e
const VX_ENUM_IMPORT_MEM = VX_ENUM_MEMORY_TYPE
const VX_IMPORT_TYPE_NONE = VX_MEMORY_TYPE_NONE
const VX_IMPORT_TYPE_HOST = VX_MEMORY_TYPE_HOST
const VX_TYPE_OBJECT_MAX = VX_TYPE_KHRONOS_OBJECT_END
const VX_TYPE_STRUCT_MAX = VX_TYPE_KHRONOS_STRUCT_MAX

# Skipping MacroDefinition: VX_KERNEL_INVALID ( VX_KERNEL_BASE ( VX_ID_KHRONOS , VX_LIBRARY_KHR_BASE ) + 0x0 )
# Skipping MacroDefinition: VX_THRESHOLD_THRESHOLD_VALUE ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_THRESHOLD ) + 0x1 )
# Skipping MacroDefinition: VX_THRESHOLD_THRESHOLD_LOWER ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_THRESHOLD ) + 0x2 )
# Skipping MacroDefinition: VX_THRESHOLD_THRESHOLD_UPPER ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_THRESHOLD ) + 0x3 )
# Skipping MacroDefinition: VX_THRESHOLD_TRUE_VALUE ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_THRESHOLD ) + 0x4 )
# Skipping MacroDefinition: VX_THRESHOLD_FALSE_VALUE ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_THRESHOLD ) + 0x5 )
# Skipping MacroDefinition: VX_THRESHOLD_DATA_TYPE ( VX_ATTRIBUTE_BASE ( VX_ID_KHRONOS , VX_TYPE_THRESHOLD ) + 0x6 )
# Skipping Typedef: CXType_FunctionProto VX_CALLBACK

struct _vx_delta_rectangle_t
    delta_start_x::Cint
    delta_start_y::Cint
    delta_end_x::Cint
    delta_end_y::Cint
end

const vx_delta_rectangle_t = _vx_delta_rectangle_t
const OPENVX_KHR_NN = "vx_khr_nn"
const VX_LIBRARY_KHR_NN_EXTENSION = 0x01
const AGO_TARGET_AFFINITY_CPU = 0x0010
const AGO_TARGET_AFFINITY_GPU = 0x0020
const AGO_MAX_PARAMS = 32
const AGO_MERGE_RULE_MAX_FIND = 4
const AGO_MERGE_RULE_MAX_REPLACE = 4
const AGO_MERGE_RULE_SOLITARY_FLAG = 0x20
const AGO_TARGET_AFFINITY_GPU_INFO_DEVICE_MASK = Float32(0x00)
const AGO_TARGET_AFFINITY_GPU_INFO_SVM_MASK = 0xf0
const AGO_TARGET_AFFINITY_GPU_INFO_SVM_ENABLE = 0x10
const AGO_TARGET_AFFINITY_GPU_INFO_SVM_AS_CLMEM = 0x20
const AGO_TARGET_AFFINITY_GPU_INFO_SVM_NO_FGS = 0x40
const VX_MAX_STRING_BUFFER_SIZE_AMD = 256

# Skipping MacroDefinition: VX_NN_ACTIVATION_LEAKY_RELU ( VX_ENUM_BASE ( VX_ID_AMD , VX_ENUM_NN_ACTIVATION_FUNCTION_TYPE ) + 0x9 )

@cenum vx_kernel_nn_ext_e::UInt32 begin
    VX_KERNEL_CONVOLUTION_LAYER = 4096
    VX_KERNEL_FULLY_CONNECTED_LAYER = 4097
    VX_KERNEL_POOLING_LAYER = 4098
    VX_KERNEL_SOFTMAX_LAYER = 4099
    VX_KERNEL_NORMALIZATION_LAYER = 4100
    VX_KERNEL_ACTIVATION_LAYER = 4101
    VX_KERNEL_ROI_POOLING_LAYER = 4102
    VX_KERNEL_DECONVOLUTION_LAYER = 4103
end

@cenum vx_nn_enum_e::UInt32 begin
    VX_ENUM_NN_ROUNDING_TYPE = 26
    VX_ENUM_NN_POOLING_TYPE = 27
    VX_ENUM_NN_NORMALIZATION_TYPE = 28
    VX_ENUM_NN_ACTIVATION_FUNCTION_TYPE = 29
end

@cenum vx_nn_rounding_type_e::UInt32 begin
    VX_NN_DS_SIZE_ROUNDING_FLOOR = 106496
    VX_NN_DS_SIZE_ROUNDING_CEILING = 106497
end

@cenum vx_nn_pooling_type_e::UInt32 begin
    VX_NN_POOLING_MAX = 110592
    VX_NN_POOLING_AVG = 110593
end

@cenum vx_nn_norm_type_e::UInt32 begin
    VX_NN_NORMALIZATION_SAME_MAP = 114688
    VX_NN_NORMALIZATION_ACROSS_MAPS = 114689
end

@cenum vx_nn_activation_function_e::UInt32 begin
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

@cenum vx_nn_type_e::UInt32 begin
    VX_TYPE_NN_CONVOLUTION_PARAMS = 37
    VX_TYPE_NN_DECONVOLUTION_PARAMS = 38
    VX_TYPE_NN_ROI_POOL_PARAMS = 39
end


struct _vx_nn_convolution_params_t
    padding_x::vx_size
    padding_y::vx_size
    overflow_policy::vx_enum
    rounding_policy::vx_enum
    down_scale_size_rounding::vx_enum
    dilation_x::vx_size
    dilation_y::vx_size
end

const vx_nn_convolution_params_t = _vx_nn_convolution_params_t

struct _vx_nn_deconvolution_params_t
    padding_x::vx_size
    padding_y::vx_size
    overflow_policy::vx_enum
    rounding_policy::vx_enum
    a_x::vx_size
    a_y::vx_size
end

const vx_nn_deconvolution_params_t = _vx_nn_deconvolution_params_t

struct _vx_nn_roi_pool_params_t
    pool_type::vx_enum
end

const vx_nn_roi_pool_params_t = _vx_nn_roi_pool_params_t

@cenum ago_type_public_e::UInt32 begin
    VX_TYPE_FLOAT16 = 15
    VX_TYPE_STRING_AMD = 17
    AGO_TYPE_KEYPOINT_XYS = 1024
    AGO_TYPE_MEANSTDDEV_DATA = 3072
    AGO_TYPE_MINMAXLOC_DATA = 3073
    AGO_TYPE_CANNY_STACK = 3074
    AGO_TYPE_SCALE_MATRIX = 3075
end

@cenum vx_context_attribute_amd_e::UInt32 begin
    VX_CONTEXT_ATTRIBUTE_AMD_OPENCL_CONTEXT = 14156033
    VX_CONTEXT_ATTRIBUTE_AMD_AFFINITY = 14156034
    VX_CONTEXT_ATTRIBUTE_AMD_SET_TEXT_MACRO = 14156035
    VX_CONTEXT_ATTRIBUTE_AMD_SET_MERGE_RULE = 14156036
    VX_CONTEXT_MAX_TENSOR_DIMENSIONS = 14156037
    VX_CONTEXT_CL_QUEUE_PROPERTIES = 14156038
end

@cenum vx_kernel_attribute_amd_e::UInt32 begin
    VX_KERNEL_ATTRIBUTE_AMD_QUERY_TARGET_SUPPORT = 14156801
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_CODEGEN_CALLBACK = 14156802
    VX_KERNEL_ATTRIBUTE_AMD_NODE_REGEN_CALLBACK = 14156803
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_GLOBAL_WORK_UPDATE_CALLBACK = 14156804
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_BUFFER_ACCESS_ENABLE = 14156805
    VX_KERNEL_ATTRIBUTE_AMD_OPENCL_BUFFER_UPDATE_CALLBACK = 14156806
end

@cenum vx_graph_attribute_amd_e::UInt32 begin
    VX_GRAPH_ATTRIBUTE_AMD_AFFINITY = 14156289
    VX_GRAPH_ATTRIBUTE_AMD_IMPORT_FROM_TEXT = 14156290
    VX_GRAPH_ATTRIBUTE_AMD_EXPORT_TO_TEXT = 14156291
    VX_GRAPH_ATTRIBUTE_AMD_OPTIMIZER_FLAGS = 14156292
    VX_GRAPH_ATTRIBUTE_AMD_PERFORMANCE_INTERNAL_LAST = 14156293
    VX_GRAPH_ATTRIBUTE_AMD_PERFORMANCE_INTERNAL_AVG = 14156294
    VX_GRAPH_ATTRIBUTE_AMD_PERFORMANCE_INTERNAL_PROFILE = 14156295
    VX_GRAPH_ATTRIBUTE_AMD_OPENCL_COMMAND_QUEUE = 14156296
end

@cenum vx_node_attribute_amd_e::UInt32 begin
    VX_NODE_ATTRIBUTE_AMD_AFFINITY = 14156545
    VX_NODE_ATTRIBUTE_AMD_OPENCL_COMMAND_QUEUE = 14156546
end

@cenum vx_image_attribute_amd_e::UInt32 begin
    VX_IMAGE_ATTRIBUTE_AMD_OPENCL_BUFFER = 14159617
    VX_IMAGE_ATTRIBUTE_AMD_OPENCL_BUFFER_OFFSET = 14159618
    VX_IMAGE_ATTRIBUTE_AMD_ENABLE_USER_BUFFER_OPENCL = 14159619
    VX_IMAGE_ATTRIBUTE_AMD_OPENCL_BUFFER_STRIDE = 14159620
    VX_IMAGE_ATTRIBUTE_AMD_HOST_BUFFER = 14159621
end

@cenum vx_tensor_attribute_amd_e::UInt32 begin
    VX_TENSOR_STRIDE_OPENCL = 14161157
    VX_TENSOR_OFFSET_OPENCL = 14161158
    VX_TENSOR_BUFFER_OPENCL = 14161159
    VX_TENSOR_MEMORY_TYPE = 14161160
end

@cenum vx_array_attribute_amd_e::UInt32 begin
    VX_ARRAY_BUFFER_OPENCL = 14159369
    VX_ARRAY_BUFFER_HIP = 14159376
    VX_ARRAY_BUFFER = 14159377
end

@cenum vx_directive_amd_e::UInt32 begin
    VX_DIRECTIVE_AMD_READ_ONLY = 13643777
    VX_DIRECTIVE_AMD_COPY_TO_OPENCL = 13643778
    VX_DIRECTIVE_AMD_ENABLE_PROFILE_CAPTURE = 13643779
    VX_DIRECTIVE_AMD_DISABLE_PROFILE_CAPTURE = 13643780
    VX_DIRECTIVE_AMD_DISABLE_OPENCL_FLUSH = 13643781
end

@cenum vx_memory_type_amd_e::UInt32 begin
    VX_MEMORY_TYPE_OPENCL = 57346
end

@cenum vx_color_space_amd_e::UInt32 begin
    VX_COLOR_SPACE_BT2020 = 13656065
end

@cenum vx_df_image_amd_e::UInt32 begin
    VX_DF_IMAGE_U1_AMD = 825241685
    VX_DF_IMAGE_F16_AMD = 909193286
    VX_DF_IMAGE_F32_AMD = 842215494
    VX_DF_IMAGE_F64_AMD = 875966534
    VX_DF_IMAGE_F32x3_AMD = 842216262
end


const AgoImageFormatDescription = AgoImageFormatDescription
const AgoTargetAffinityInfo = AgoTargetAffinityInfo
const AgoContextTextMacroInfo = AgoContextTextMacroInfo
const AgoGraphImportInfo = AgoGraphImportInfo
const AgoGraphExportInfo = AgoGraphExportInfo
const AgoGraphPerfInternalInfo = AgoGraphPerfInternalInfo

struct ANONYMOUS1_find
    kernel_id::vx_enum
    arg_spec::NTuple{32, vx_uint32}
end

struct ANONYMOUS2_replace
    kernel_id::vx_enum
    arg_spec::NTuple{32, vx_uint32}
end

struct AgoNodeMergeRule_t
    find::ANONYMOUS1_find
    replace::ANONYMOUS2_replace
end

const AgoNodeMergeRule = AgoNodeMergeRule_t
const VX_ENUM_IX_USE = 0x18

# Skipping MacroDefinition: VX_IX_USE_APPLICATION_CREATE ( VX_ENUM_BASE ( VX_ID_KHRONOS , VX_ENUM_IX_USE ) + 0x0 )
# Skipping MacroDefinition: VX_IX_USE_EXPORT_VALUES ( VX_ENUM_BASE ( VX_ID_KHRONOS , VX_ENUM_IX_USE ) + 0x1 )
# Skipping MacroDefinition: VX_IX_USE_NO_EXPORT_VALUES ( VX_ENUM_BASE ( VX_ID_KHRONOS , VX_ENUM_IX_USE ) + 0x2 )

@cenum vx_ext_import_type_e::UInt32 begin
    VX_TYPE_IMPORT = 2068
end


const _vx_import = Cvoid
const vx_import = Ptr{_vx_import}
const _vx_platform = Cvoid
const vx_platform = Ptr{_vx_platform}
const OPENVX_KHR_IX = "vx_khr_ix"
const OPENVX_KHR_TILING = "vx_khr_tiling"
const VX_MAX_TILING_PLANES = 4

# Skipping MacroDefinition: vxImageHeight ( ptile ) ( ( ptile ) ) -> image . height )
# Skipping MacroDefinition: vxImageWidth ( ptile ) ( ( ptile ) ) -> image . width )
# Skipping MacroDefinition: vxTileX ( ptile ) ( ( ptile ) -> tile_x )
# Skipping MacroDefinition: vxTileY ( ptile ) ( ( ptile ) -> tile_y )
# Skipping MacroDefinition: vxTileWidth ( ptile , index ) ( ( ptile ) -> addr [ index ] . dim_x )
# Skipping MacroDefinition: vxTileHeight ( ptile , index ) ( ( ptile ) -> addr [ index ] . dim_y )
# Skipping MacroDefinition: vxTileBlockHeight ( ptile ) ( ( ptile ) -> tile_block . height )
# Skipping MacroDefinition: vxTileBlockWidth ( ptile ) ( ( ptile ) -> tile_block . width )
# Skipping MacroDefinition: vxNeighborhoodLeft ( ptile ) ( ( ptile ) -> neighborhood . left )
# Skipping MacroDefinition: vxNeighborhoodRight ( ptile ) ( ( ptile ) -> neighborhood . right )
# Skipping MacroDefinition: vxNeighborhoodTop ( ptile ) ( ( ptile ) -> neighborhood . top )
# Skipping MacroDefinition: vxNeighborhoodBottom ( ptile ) ( ( ptile ) -> neighborhood . bottom )
# Skipping MacroDefinition: vxImageOffset ( ptile , i , x , y , ox , oy ) ( ( ptile ) -> addr [ i ] . stride_y * ( vx_int32 ) ( ( ( vx_int32 ) ( ( oy ) + ( y ) ) * ( vx_int32 ) ( ptile ) -> addr [ i ] . scale_y ) / ( vx_int32 ) VX_SCALE_UNITY ) ) + ( ( ptile ) -> addr [ i ] . stride_x * ( vx_int32 ) ( ( ( vx_int32 ) ( ( ox ) + ( x ) ) * ( vx_int32 ) ( ptile ) -> addr [ i ] . scale_x ) / ( vx_int32 ) VX_SCALE_UNITY ) )
# Skipping MacroDefinition: vxImagePixel ( type , ptile , i , x , y , ox , oy ) * ( ( type * ) ( & ( ( vx_uint8 * ) ( ptile ) -> base [ i ] ) [ vxImageOffset ( ptile , i , x , y , ox , oy ) ] ) )

const vx_kernel_input_validate_f = Ptr{Cvoid}
const vx_kernel_output_validate_f = Ptr{Cvoid}

struct _vx_tile_block_size_t
    width::vx_int32
    height::vx_int32
end

const vx_tile_block_size_t = _vx_tile_block_size_t

struct _vx_neighborhood_size_t
    left::vx_int32
    right::vx_int32
    top::vx_int32
    bottom::vx_int32
end

const vx_neighborhood_size_t = _vx_neighborhood_size_t

struct _vx_image_description_t
    width::vx_uint32
    height::vx_uint32
    format::vx_df_image
    planes::vx_uint32
    range::vx_enum
    space::vx_enum
end

const vx_image_description_t = _vx_image_description_t

struct _vx_tile_t
    base::NTuple{4, Ptr{vx_uint8}}
    tile_x::vx_uint32
    tile_y::vx_uint32
    addr::NTuple{4, vx_imagepatch_addressing_t}
    tile_block::vx_tile_block_size_t
    neighborhood::vx_neighborhood_size_t
    image::vx_image_description_t
end

const vx_tile_t = _vx_tile_t

@cenum vx_kernel_attribute_tiling_e::UInt32 begin
    VX_KERNEL_INPUT_NEIGHBORHOOD = 525319
    VX_KERNEL_OUTPUT_TILE_BLOCK_SIZE = 525320
    VX_KERNEL_BORDER = 525321
    VX_KERNEL_TILE_MEMORY_SIZE = 525322
end

@cenum vx_node_attribute_tiling_e::UInt32 begin
    VX_NODE_INPUT_NEIGHBORHOOD = 525067
    VX_NODE_OUTPUT_TILE_BLOCK_SIZE = 525068
    VX_NODE_TILE_MEMORY_SIZE = 525069
end

@cenum vx_border_tiling_e::UInt32 begin
    VX_BORDER_MODE_SELF = 49155
end


const vx_tiling_kernel_f = Ptr{Cvoid}
const OPENVX_KHR_XML = "vx_khr_xml"

@cenum vx_ext_import_types_e::UInt32 begin
    VX_IMPORT_TYPE_XML = 0
end

@cenum vx_import_attribute_e::UInt32 begin
    VX_IMPORT_ATTRIBUTE_COUNT = 529408
    VX_IMPORT_ATTRIBUTE_TYPE = 529409
end

