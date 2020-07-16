const VX_MAX_IMPLEMENTATION_NAME = 64
const VX_MAX_KERNEL_NAME = 256
const VX_MAX_LOG_MESSAGE_LEN = 1024
const VX_MAX_REFERENCE_NAME = 64
const VX_VENDOR_MASK = 0xfff00000
const VX_TYPE_MASK = 0x000fff00
const VX_LIBRARY_MASK = 0x000ff000
const VX_KERNEL_MASK = 0x00000fff
const VX_ATTRIBUTE_ID_MASK = 0x000000ff
const VX_ENUM_TYPE_MASK = 0x000ff000
const VX_ENUM_MASK = 0x000000fff
const VX_FMT_REF = "%p"
const VX_FMT_SIZE = "%zu"
const VX_SCALE_UNITY = UInt32(1024)
const VX_SCALE_PYRAMID_HALF = Float32(0.5)
const VX_SCALE_PYRAMID_ORB = Float32(0.8408964)
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
const OPENVX_KHR_XML = "vx_khr_xml"
const OPENVX_KHR_IX = "vx_khr_ix"
const OPENVX_KHR_TILING = "vx_khr_tiling"
const VX_MAX_TILING_PLANES = 4
const VX_ENUM_IX_USE = 0x18

# Macro functions as generic Julia functions

function VX_VENDOR(e)
    return (UInt32(e) & VX_VENDOR_MASK) >> 20
end

function VX_TYPE(e)
    return (UInt32(e) & VX_TYPE_MASK) >> 8
end

function VX_ENUM_TYPE(e)
    return (UInt32(e) & VX_ENUM_TYPE_MASK) >> 12
end

function VX_LIBRARY(e)
    return (UInt32(e) & VX_LIBRARY_MASK) >> 12
end

function VX_DF_IMAGE(a, b, c, d)
    return a | (b << 8) | (c << 16) | (d << 24)
end

function VX_ATTRIBUTE_BASE(vendor, object)
    return (UInt16(vendor) << 20) | (UInt16(object) << 8)
end

function VX_KERNEL_BASE(vendor, lib)
    return (UInt16(vendor) << 20) | (UInt16(lib) << 12)
end

function VX_ENUM_BASE(vendor, id)
    return (UInt16(vendor) << 20) | (UInt16(id) << 12)
end

function VX_VERSION_MAJOR(x)
    return (x & 0xFF) << 8
end

function VX_VERSION_MINOR(x)
    return (x & 0xFF) << 0
end

## Macro-dependent constants

const VX_VERSION_1_0 = VX_VERSION_MAJOR(1) | VX_VERSION_MINOR(0)
const VX_VERSION_1_1 = VX_VERSION_MAJOR(1) | VX_VERSION_MINOR(1)
const VX_VERSION_1_2 = VX_VERSION_MAJOR(1) | VX_VERSION_MINOR(2)
const VX_VERSION = VX_VERSION_1_2

const VX_KERNEL_ATTRIBUTE_LOCAL_DATA_PTR = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_KERNEL) + 0x4 
const VX_GRAPH_ATTRIBUTE_STATUS = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_GRAPH) + 0x1 
const VX_IMAGE_SIZE = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_IMAGE) + 0x6 
const VX_META_FORMAT_ATTRIBUTE_DELTA_RECTANGLE = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_META_FORMAT) + 0x0 
const VX_HINT_SERIALIZE = VX_ENUM_BASE(VX_ID_KHRONOS , VX_ENUM_HINT) + 0x0 
const VX_KERNEL_INVALID = VX_KERNEL_BASE(VX_ID_KHRONOS , VX_LIBRARY_KHR_BASE) + 0x0 
const VX_THRESHOLD_THRESHOLD_VALUE = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_THRESHOLD) + 0x1 
const VX_THRESHOLD_THRESHOLD_LOWER = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_THRESHOLD) + 0x2 
const VX_THRESHOLD_THRESHOLD_UPPER = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_THRESHOLD) + 0x3 
const VX_THRESHOLD_TRUE_VALUE = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_THRESHOLD) + 0x4 
const VX_THRESHOLD_FALSE_VALUE = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_THRESHOLD) + 0x5 
const VX_THRESHOLD_DATA_TYPE = VX_ATTRIBUTE_BASE(VX_ID_KHRONOS , VX_TYPE_THRESHOLD) + 0x6 
const VX_NN_ACTIVATION_LEAKY_RELU = VX_ENUM_BASE(VX_ID_AMD , VX_ENUM_NN_ACTIVATION_FUNCTION_TYPE) + 0x9 
const VX_IX_USE_APPLICATION_CREATE = VX_ENUM_BASE(VX_ID_KHRONOS , VX_ENUM_IX_USE) + 0x0 
const VX_IX_USE_EXPORT_VALUES = VX_ENUM_BASE(VX_ID_KHRONOS , VX_ENUM_IX_USE) + 0x1 
const VX_IX_USE_NO_EXPORT_VALUES = VX_ENUM_BASE(VX_ID_KHRONOS , VX_ENUM_IX_USE) + 0x2 

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
# vxImageOffset ( ptile , i , x , y , ox , oy ) ( ( ptile ) -> addr [ i ] . stride_y * ( vx_int32 ) ( ( ( vx_int32 ) ( ( oy ) + ( y ) ) * ( vx_int32 ) ( ptile ) -> addr [ i ] . scale_y ) / ( vx_int32 ) VX_SCALE_UNITY ) ) + ( ( ptile ) -> addr [ i ] . stride_x * ( vx_int32 ) ( ( ( vx_int32 ) ( ( ox ) + ( x ) ) * ( vx_int32 ) ( ptile ) -> addr [ i ] . scale_x ) / ( vx_int32 ) VX_SCALE_UNITY ) )
# vxImagePixel ( type , ptile , i , x , y , ox , oy ) * ( ( type * ) ( & ( ( vx_uint8 * ) ( ptile ) -> base [ i ] ) [ vxImageOffset ( ptile , i , x , y , ox , oy ) ] ) )


