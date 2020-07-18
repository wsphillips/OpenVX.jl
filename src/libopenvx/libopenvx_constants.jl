const MAX_IMPLEMENTATION_NAME = 64
const MAX_KERNEL_NAME = 256
const MAX_LOG_MESSAGE_LEN = 1024
const MAX_REFERENCE_NAME = 64
const VENDOR_MASK = 0xfff00000
const TYPE_MASK = 0x000fff00
const LIBRARY_MASK = 0x000ff000
const KERNEL_MASK = 0x00000fff
const ATTRIBUTE_ID_MASK = 0x000000ff
const ENUM_TYPE_MASK = 0x000ff000
const ENUM_MASK = 0x000000fff
const FMT_REF = "%p"
const FMT_SIZE = "%zu"
const SCALE_UNITY = UInt32(1024)
const SCALE_PYRAMID_HALF = Float32(0.5)
const SCALE_PYRAMID_ORB = Float32(0.8408964)
const OPENVX_KHR_NN = "vx_khr_nn"
const LIBRARY_KHR_NN_EXTENSION = 0x01
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
const MAX_STRING_BUFFER_SIZE_AMD = 256
const OPENVX_KHR_XML = "vx_khr_xml"
const OPENVX_KHR_IX = "vx_khr_ix"
const OPENVX_KHR_TILING = "vx_khr_tiling"
const MAX_TILING_PLANES = 4
const ENUM_IX_USE = 0x18

## Macro-dependent constants

const VERSION_1_0 = VERSION_MAJOR(1) | VERSION_MINOR(0)
const VERSION_1_1 = VERSION_MAJOR(1) | VERSION_MINOR(1)
const VERSION_1_2 = VERSION_MAJOR(1) | VERSION_MINOR(2)
const VERSION = VERSION_1_2

const KERNEL_ATTRIBUTE_LOCAL_DATA_PTR = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_KERNEL) + 0x4 
const GRAPH_ATTRIBUTE_STATUS = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_GRAPH) + 0x1 
const IMAGE_SIZE = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_IMAGE) + 0x6 
const META_FORMAT_ATTRIBUTE_DELTA_RECTANGLE = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_META_FORMAT) + 0x0 
const HINT_SERIALIZE = ENUM_BASE(ID_KHRONOS , ENUM_HINT) + 0x0 
const KERNEL_INVALID = KERNEL_BASE(ID_KHRONOS , LIBRARY_KHR_BASE) + 0x0 
const THRESHOLD_THRESHOLD_VALUE = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_THRESHOLD) + 0x1 
const THRESHOLD_THRESHOLD_LOWER = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_THRESHOLD) + 0x2 
const THRESHOLD_THRESHOLD_UPPER = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_THRESHOLD) + 0x3 
const THRESHOLD_TRUE_VALUE = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_THRESHOLD) + 0x4 
const THRESHOLD_FALSE_VALUE = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_THRESHOLD) + 0x5 
const THRESHOLD_DATA_TYPE = ATTRIBUTE_BASE(ID_KHRONOS , TYPE_THRESHOLD) + 0x6 
const NN_ACTIVATION_LEAKY_RELU = ENUM_BASE(ID_AMD , ENUM_NN_ACTIVATION_FUNCTION_TYPE) + 0x9 
const IX_USE_APPLICATION_CREATE = ENUM_BASE(ID_KHRONOS , ENUM_IX_USE) + 0x0 
const IX_USE_EXPORT_VALUES = ENUM_BASE(ID_KHRONOS , ENUM_IX_USE) + 0x1 
const IX_USE_NO_EXPORT_VALUES = ENUM_BASE(ID_KHRONOS , ENUM_IX_USE) + 0x2 

## Extra macros -- implement as needed/skipped for now

# vxFormatArrayPointer ( ptr , index , stride ) ( & ( ( ( vx_uint8 * ) ( ptr ) ) [ ( index ) * ( stride ) ] ) )
# vxArrayItem ( type , ptr , index , stride ) ( * ( type * ) ( vxFormatArrayPointer ( ( ptr ) , ( index ) , ( stride ) ) ) )
# vxImageHeight ( ptile ) ( ( ptile ) ) -> image . height )
# vxImageWidth ( ptile ) ( ( ptile ) ) -> image . width )
# vxTileX ( ptile ) ( ( ptile ) -> tile_x )
# vxTileY ( ptile ) ( ( ptile ) -> tile_y )
# vxTileWidth ( ptile , index ) ( ( ptile ) -> addr [ index ] . dim_x )
# vxTileHeight ( ptile , index ) ( ( ptile ) -> addr [ index ] . dim_y )
# vxTileBlockHeight ( ptile ) ( ( ptile ) -> tile_block . height )
# vxTileBlockWidth ( ptile ) ( ( ptile ) -> tile_block . width )
# vxNeighborhoodLeft ( ptile ) ( ( ptile ) -> neighborhood . left )
# vxNeighborhoodRight ( ptile ) ( ( ptile ) -> neighborhood . right )
# vxNeighborhoodTop ( ptile ) ( ( ptile ) -> neighborhood . top )
# vxNeighborhoodBottom ( ptile ) ( ( ptile ) -> neighborhood . bottom )
# vxImageOffset ( ptile , i , x , y , ox , oy ) ( ( ptile ) -> addr [ i ] . stride_y * ( vx_int32 ) ( ( ( vx_int32 ) ( ( oy ) + ( y ) ) * ( vx_int32 ) ( ptile ) -> addr [ i ] . scale_y ) / ( vx_int32 ) SCALE_UNITY ) ) + ( ( ptile ) -> addr [ i ] . stride_x * ( vx_int32 ) ( ( ( vx_int32 ) ( ( ox ) + ( x ) ) * ( vx_int32 ) ( ptile ) -> addr [ i ] . scale_x ) / ( vx_int32 ) SCALE_UNITY ) )
# vxImagePixel ( type , ptile , i , x , y , ox , oy ) * ( ( type * ) ( & ( ( vx_uint8 * ) ( ptile ) -> base [ i ] ) [ vxImageOffset ( ptile , i , x , y , ox , oy ) ] ) )


