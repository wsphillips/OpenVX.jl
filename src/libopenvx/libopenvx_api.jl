
function CreateContext()
    ccall((:vxCreateContext, :libopenvx), vx_context, ())
end

function ReleaseContext(context::Ref{vx_context})
    ccall((:vxReleaseContext, :libopenvx), vx_status, (Ref{vx_context},), context)
end

function GetContext(reference::vx_reference)
    ccall((:vxGetContext, :libopenvx), vx_context, (vx_reference,), reference)
end

function QueryContext(context::vx_context, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryContext, :libopenvx), vx_status, (vx_context, vx_enum, Ref{Cvoid}, vx_size), context, attribute, ptr, size)
end

function SetContextAttribute(context::vx_context, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetContextAttribute, :libopenvx), vx_status, (vx_context, vx_enum, Ref{Cvoid}, vx_size), context, attribute, ptr, size)
end

function Hint(reference::vx_reference, hint::vx_enum, data::Ref{Cvoid}, data_size::vx_size)
    ccall((:vxHint, :libopenvx), vx_status, (vx_reference, vx_enum, Ref{Cvoid}, vx_size), reference, hint, data, data_size)
end

function Directive(reference::vx_reference, directive::vx_enum)
    ccall((:vxDirective, :libopenvx), vx_status, (vx_reference, vx_enum), reference, directive)
end

function GetStatus(reference::vx_reference)
    ccall((:vxGetStatus, :libopenvx), vx_status, (vx_reference,), reference)
end

function RegisterUserStruct(context::vx_context, size::vx_size)
    ccall((:vxRegisterUserStruct, :libopenvx), vx_enum, (vx_context, vx_size), context, size)
end

function AllocateUserKernelId(context::vx_context, pKernelEnumId::Ref{vx_enum})
    ccall((:vxAllocateUserKernelId, :libopenvx), vx_status, (vx_context, Ref{vx_enum}), context, pKernelEnumId)
end

function AllocateUserKernelLibraryId(context::vx_context, pLibraryId::Ref{vx_enum})
    ccall((:vxAllocateUserKernelLibraryId, :libopenvx), vx_status, (vx_context, Ref{vx_enum}), context, pLibraryId)
end

function SetImmediateModeTarget(context::vx_context, target_enum::vx_enum, target_string)
    ccall((:vxSetImmediateModeTarget, :libopenvx), vx_status, (vx_context, vx_enum, Cstring), context, target_enum, target_string)
end

function CreateImage(context::vx_context, width::vx_uint32, height::vx_uint32, color::vx_df_image)
    ccall((:vxCreateImage, :libopenvx), vx_image, (vx_context, vx_uint32, vx_uint32, vx_df_image), context, width, height, color)
end

function CreateImageFromROI(img::vx_image, rect::Ref{vx_rectangle_t})
    ccall((:vxCreateImageFromROI, :libopenvx), vx_image, (vx_image, Ref{vx_rectangle_t}), img, rect)
end

function CreateUniformImage(context::vx_context, width::vx_uint32, height::vx_uint32, color::vx_df_image, value::Ref{vx_pixel_value_t})
    ccall((:vxCreateUniformImage, :libopenvx), vx_image, (vx_context, vx_uint32, vx_uint32, vx_df_image, Ref{vx_pixel_value_t}), context, width, height, color, value)
end

function CreateVirtualImage(graph::vx_graph, width::vx_uint32, height::vx_uint32, color::vx_df_image)
    ccall((:vxCreateVirtualImage, :libopenvx), vx_image, (vx_graph, vx_uint32, vx_uint32, vx_df_image), graph, width, height, color)
end

function CreateImageFromHandle(context::vx_context, color::vx_df_image, addrs::Ref{vx_imagepatch_addressing_t}, ptrs::Ref{Ptr{Cvoid}}, memory_type::vx_enum)
    ccall((:vxCreateImageFromHandle, :libopenvx), vx_image, (vx_context, vx_df_image, Ref{vx_imagepatch_addressing_t}, Ref{Ptr{Cvoid}}, vx_enum), context, color, addrs, ptrs, memory_type)
end

function SwapImageHandle(image::vx_image, new_ptrs::Ref{Ptr{Cvoid}}, prev_ptrs::Ref{Ptr{Cvoid}}, num_planes::vx_size)
    ccall((:vxSwapImageHandle, :libopenvx), vx_status, (vx_image, Ref{Ptr{Cvoid}}, Ref{Ptr{Cvoid}}, vx_size), image, new_ptrs, prev_ptrs, num_planes)
end

function QueryImage(image::vx_image, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryImage, :libopenvx), vx_status, (vx_image, vx_enum, Ref{Cvoid}, vx_size), image, attribute, ptr, size)
end

function SetImageAttribute(image::vx_image, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetImageAttribute, :libopenvx), vx_status, (vx_image, vx_enum, Ref{Cvoid}, vx_size), image, attribute, ptr, size)
end

function SetImagePixelValues(image::vx_image, pixel_value::Ref{vx_pixel_value_t})
    ccall((:vxSetImagePixelValues, :libopenvx), vx_status, (vx_image, Ref{vx_pixel_value_t}), image, pixel_value)
end

function ReleaseImage(image::Ref{vx_image})
    ccall((:vxReleaseImage, :libopenvx), vx_status, (Ref{vx_image},), image)
end

function FormatImagePatchAddress1d(ptr::Ref{Cvoid}, index::vx_uint32, addr::Ref{vx_imagepatch_addressing_t})
    ccall((:vxFormatImagePatchAddress1d, :libopenvx), Ptr{Cvoid}, (Ref{Cvoid}, vx_uint32, Ref{vx_imagepatch_addressing_t}), ptr, index, addr)
end

function FormatImagePatchAddress2d(ptr::Ref{Cvoid}, x::vx_uint32, y::vx_uint32, addr::Ref{vx_imagepatch_addressing_t})
    ccall((:vxFormatImagePatchAddress2d, :libopenvx), Ptr{Cvoid}, (Ref{Cvoid}, vx_uint32, vx_uint32, Ref{vx_imagepatch_addressing_t}), ptr, x, y, addr)
end

function GetValidRegionImage(image::vx_image, rect::Ref{vx_rectangle_t})
    ccall((:vxGetValidRegionImage, :libopenvx), vx_status, (vx_image, Ref{vx_rectangle_t}), image, rect)
end

function CopyImagePatch(image::vx_image, image_rect::Ref{vx_rectangle_t}, image_plane_index::vx_uint32, user_addr::Ref{vx_imagepatch_addressing_t}, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyImagePatch, :libopenvx), vx_status, (vx_image, Ref{vx_rectangle_t}, vx_uint32, Ref{vx_imagepatch_addressing_t}, Ref{Cvoid}, vx_enum, vx_enum), image, image_rect, image_plane_index, user_addr, user_ptr, usage, user_mem_type)
end

function MapImagePatch(image::vx_image, rect::Ref{vx_rectangle_t}, plane_index::vx_uint32, map_id::Ref{vx_map_id}, addr::Ref{vx_imagepatch_addressing_t}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum, mem_type::vx_enum, flags::vx_uint32)
    ccall((:vxMapImagePatch, :libopenvx), vx_status, (vx_image, Ref{vx_rectangle_t}, vx_uint32, Ref{vx_map_id}, Ref{vx_imagepatch_addressing_t}, Ref{Ptr{Cvoid}}, vx_enum, vx_enum, vx_uint32), image, rect, plane_index, map_id, addr, ptr, usage, mem_type, flags)
end

function UnmapImagePatch(image::vx_image, map_id::vx_map_id)
    ccall((:vxUnmapImagePatch, :libopenvx), vx_status, (vx_image, vx_map_id), image, map_id)
end

function CreateImageFromChannel(img::vx_image, channel::vx_enum)
    ccall((:vxCreateImageFromChannel, :libopenvx), vx_image, (vx_image, vx_enum), img, channel)
end

function SetImageValidRectangle(image::vx_image, rect::Ref{vx_rectangle_t})
    ccall((:vxSetImageValidRectangle, :libopenvx), vx_status, (vx_image, Ref{vx_rectangle_t}), image, rect)
end

function LoadKernels(context::vx_context, _module::Ref{vx_char})
    ccall((:vxLoadKernels, :libopenvx), vx_status, (vx_context, Ref{vx_char}), context, _module)
end

function UnloadKernels(context::vx_context, _module::Ref{vx_char})
    ccall((:vxUnloadKernels, :libopenvx), vx_status, (vx_context, Ref{vx_char}), context, _module)
end

function GetKernelByName(context::vx_context, name::Ref{vx_char})
    ccall((:vxGetKernelByName, :libopenvx), vx_kernel, (vx_context, Ref{vx_char}), context, name)
end

function GetKernelByEnum(context::vx_context, kernel::vx_enum)
    ccall((:vxGetKernelByEnum, :libopenvx), vx_kernel, (vx_context, vx_enum), context, kernel)
end

function QueryKernel(kernel::vx_kernel, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryKernel, :libopenvx), vx_status, (vx_kernel, vx_enum, Ref{Cvoid}, vx_size), kernel, attribute, ptr, size)
end

function ReleaseKernel(kernel::Ref{vx_kernel})
    ccall((:vxReleaseKernel, :libopenvx), vx_status, (Ref{vx_kernel},), kernel)
end

function AddUserKernel(context::vx_context, name::Ref{vx_char}, enumeration::vx_enum, func_ptr::vx_kernel_f, numParams::vx_uint32, validate::vx_kernel_validate_f, init::vx_kernel_initialize_f, deinit::vx_kernel_deinitialize_f)
    ccall((:vxAddUserKernel, :libopenvx), vx_kernel, (vx_context, Ref{vx_char}, vx_enum, vx_kernel_f, vx_uint32, vx_kernel_validate_f, vx_kernel_initialize_f, vx_kernel_deinitialize_f), context, name, enumeration, func_ptr, numParams, validate, init, deinit)
end

function FinalizeKernel(kernel::vx_kernel)
    ccall((:vxFinalizeKernel, :libopenvx), vx_status, (vx_kernel,), kernel)
end

function AddParameterToKernel(kernel::vx_kernel, index::vx_uint32, dir::vx_enum, data_type::vx_enum, state::vx_enum)
    ccall((:vxAddParameterToKernel, :libopenvx), vx_status, (vx_kernel, vx_uint32, vx_enum, vx_enum, vx_enum), kernel, index, dir, data_type, state)
end

function RemoveKernel(kernel::vx_kernel)
    ccall((:vxRemoveKernel, :libopenvx), vx_status, (vx_kernel,), kernel)
end

function SetKernelAttribute(kernel::vx_kernel, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetKernelAttribute, :libopenvx), vx_status, (vx_kernel, vx_enum, Ref{Cvoid}, vx_size), kernel, attribute, ptr, size)
end

function GetKernelParameterByIndex(kernel::vx_kernel, index::vx_uint32)
    ccall((:vxGetKernelParameterByIndex, :libopenvx), vx_parameter, (vx_kernel, vx_uint32), kernel, index)
end

function CreateGraph(context::vx_context)
    ccall((:vxCreateGraph, :libopenvx), vx_graph, (vx_context,), context)
end

function ReleaseGraph(graph::Ref{vx_graph})
    ccall((:vxReleaseGraph, :libopenvx), vx_status, (Ref{vx_graph},), graph)
end

function VerifyGraph(graph::vx_graph)
    ccall((:vxVerifyGraph, :libopenvx), vx_status, (vx_graph,), graph)
end

function ProcessGraph(graph::vx_graph)
    ccall((:vxProcessGraph, :libopenvx), vx_status, (vx_graph,), graph)
end

function ScheduleGraph(graph::vx_graph)
    ccall((:vxScheduleGraph, :libopenvx), vx_status, (vx_graph,), graph)
end

function WaitGraph(graph::vx_graph)
    ccall((:vxWaitGraph, :libopenvx), vx_status, (vx_graph,), graph)
end

function QueryGraph(graph::vx_graph, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryGraph, :libopenvx), vx_status, (vx_graph, vx_enum, Ref{Cvoid}, vx_size), graph, attribute, ptr, size)
end

function SetGraphAttribute(graph::vx_graph, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetGraphAttribute, :libopenvx), vx_status, (vx_graph, vx_enum, Ref{Cvoid}, vx_size), graph, attribute, ptr, size)
end

function AddParameterToGraph(graph::vx_graph, parameter::vx_parameter)
    ccall((:vxAddParameterToGraph, :libopenvx), vx_status, (vx_graph, vx_parameter), graph, parameter)
end

function SetGraphParameterByIndex(graph::vx_graph, index::vx_uint32, value::vx_reference)
    ccall((:vxSetGraphParameterByIndex, :libopenvx), vx_status, (vx_graph, vx_uint32, vx_reference), graph, index, value)
end

function GetGraphParameterByIndex(graph::vx_graph, index::vx_uint32)
    ccall((:vxGetGraphParameterByIndex, :libopenvx), vx_parameter, (vx_graph, vx_uint32), graph, index)
end

function IsGraphVerified(graph::vx_graph)
    ccall((:vxIsGraphVerified, :libopenvx), vx_bool, (vx_graph,), graph)
end

function CreateGenericNode(graph::vx_graph, kernel::vx_kernel)
    ccall((:vxCreateGenericNode, :libopenvx), vx_node, (vx_graph, vx_kernel), graph, kernel)
end

function QueryNode(node::vx_node, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryNode, :libopenvx), vx_status, (vx_node, vx_enum, Ref{Cvoid}, vx_size), node, attribute, ptr, size)
end

function SetNodeAttribute(node::vx_node, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetNodeAttribute, :libopenvx), vx_status, (vx_node, vx_enum, Ref{Cvoid}, vx_size), node, attribute, ptr, size)
end

function ReleaseNode(node::Ref{vx_node})
    ccall((:vxReleaseNode, :libopenvx), vx_status, (Ref{vx_node},), node)
end

function RemoveNode(node::Ref{vx_node})
    ccall((:vxRemoveNode, :libopenvx), vx_status, (Ref{vx_node},), node)
end

function AssignNodeCallback(node::vx_node, callback::vx_nodecomplete_f)
    ccall((:vxAssignNodeCallback, :libopenvx), vx_status, (vx_node, vx_nodecomplete_f), node, callback)
end

function RetrieveNodeCallback(node::vx_node)
    ccall((:vxRetrieveNodeCallback, :libopenvx), vx_nodecomplete_f, (vx_node,), node)
end

function SetNodeTarget(node::vx_node, target_enum::vx_enum, target_string)
    ccall((:vxSetNodeTarget, :libopenvx), vx_status, (vx_node, vx_enum, Cstring), node, target_enum, target_string)
end

function ReplicateNode(graph::vx_graph, first_node::vx_node, replicate::Ref{vx_bool}, number_of_parameters::vx_uint32)
    ccall((:vxReplicateNode, :libopenvx), vx_status, (vx_graph, vx_node, Ref{vx_bool}, vx_uint32), graph, first_node, replicate, number_of_parameters)
end

function GetParameterByIndex(node::vx_node, index::vx_uint32)
    ccall((:vxGetParameterByIndex, :libopenvx), vx_parameter, (vx_node, vx_uint32), node, index)
end

function ReleaseParameter(param::Ref{vx_parameter})
    ccall((:vxReleaseParameter, :libopenvx), vx_status, (Ref{vx_parameter},), param)
end

function SetParameterByIndex(node::vx_node, index::vx_uint32, value::vx_reference)
    ccall((:vxSetParameterByIndex, :libopenvx), vx_status, (vx_node, vx_uint32, vx_reference), node, index, value)
end

function SetParameterByReference(parameter::vx_parameter, value::vx_reference)
    ccall((:vxSetParameterByReference, :libopenvx), vx_status, (vx_parameter, vx_reference), parameter, value)
end

function QueryParameter(parameter::vx_parameter, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryParameter, :libopenvx), vx_status, (vx_parameter, vx_enum, Ref{Cvoid}, vx_size), parameter, attribute, ptr, size)
end

function CreateScalar(context::vx_context, data_type::vx_enum, ptr::Ref{Cvoid})
    ccall((:vxCreateScalar, :libopenvx), vx_scalar, (vx_context, vx_enum, Ref{Cvoid}), context, data_type, ptr)
end

function CreateScalarWithSize(context::vx_context, data_type::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxCreateScalarWithSize, :libopenvx), vx_scalar, (vx_context, vx_enum, Ref{Cvoid}, vx_size), context, data_type, ptr, size)
end

function CreateVirtualScalar(graph::vx_graph, data_type::vx_enum)
    ccall((:vxCreateVirtualScalar, :libopenvx), vx_scalar, (vx_graph, vx_enum), graph, data_type)
end

function ReleaseScalar(scalar::Ref{vx_scalar})
    ccall((:vxReleaseScalar, :libopenvx), vx_status, (Ref{vx_scalar},), scalar)
end

function QueryScalar(scalar::vx_scalar, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryScalar, :libopenvx), vx_status, (vx_scalar, vx_enum, Ref{Cvoid}, vx_size), scalar, attribute, ptr, size)
end

function CopyScalar(scalar::vx_scalar, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyScalar, :libopenvx), vx_status, (vx_scalar, Ref{Cvoid}, vx_enum, vx_enum), scalar, user_ptr, usage, user_mem_type)
end

function CopyScalarWithSize(scalar::vx_scalar, size::vx_size, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyScalarWithSize, :libopenvx), vx_status, (vx_scalar, vx_size, Ref{Cvoid}, vx_enum, vx_enum), scalar, size, user_ptr, usage, user_mem_type)
end

function QueryReference(ref::vx_reference, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryReference, :libopenvx), vx_status, (vx_reference, vx_enum, Ref{Cvoid}, vx_size), ref, attribute, ptr, size)
end

function ReleaseReference(ref_ptr::Ref{vx_reference})
    ccall((:vxReleaseReference, :libopenvx), vx_status, (Ref{vx_reference},), ref_ptr)
end

function RetainReference(ref::vx_reference)
    ccall((:vxRetainReference, :libopenvx), vx_status, (vx_reference,), ref)
end

function SetReferenceName(ref::vx_reference, name::Ref{vx_char})
    ccall((:vxSetReferenceName, :libopenvx), vx_status, (vx_reference, Ref{vx_char}), ref, name)
end

function QueryDelay(delay::vx_delay, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryDelay, :libopenvx), vx_status, (vx_delay, vx_enum, Ref{Cvoid}, vx_size), delay, attribute, ptr, size)
end

function ReleaseDelay(delay::Ref{vx_delay})
    ccall((:vxReleaseDelay, :libopenvx), vx_status, (Ref{vx_delay},), delay)
end

function CreateDelay(context::vx_context, exemplar::vx_reference, num_slots::vx_size)
    ccall((:vxCreateDelay, :libopenvx), vx_delay, (vx_context, vx_reference, vx_size), context, exemplar, num_slots)
end

function GetReferenceFromDelay(delay::vx_delay, index::vx_int32)
    ccall((:vxGetReferenceFromDelay, :libopenvx), vx_reference, (vx_delay, vx_int32), delay, index)
end

function AgeDelay(delay::vx_delay)
    ccall((:vxAgeDelay, :libopenvx), vx_status, (vx_delay,), delay)
end

function RegisterAutoAging(graph::vx_graph, delay::vx_delay)
    ccall((:vxRegisterAutoAging, :libopenvx), vx_status, (vx_graph, vx_delay), graph, delay)
end

function RegisterLogCallback(context::vx_context, callback::vx_log_callback_f, reentrant::vx_bool)
    ccall((:vxRegisterLogCallback, :libopenvx), Cvoid, (vx_context, vx_log_callback_f, vx_bool), context, callback, reentrant)
end

function CreateLUT(context::vx_context, data_type::vx_enum, count::vx_size)
    ccall((:vxCreateLUT, :libopenvx), vx_lut, (vx_context, vx_enum, vx_size), context, data_type, count)
end

function CreateVirtualLUT(graph::vx_graph, data_type::vx_enum, count::vx_size)
    ccall((:vxCreateVirtualLUT, :libopenvx), vx_lut, (vx_graph, vx_enum, vx_size), graph, data_type, count)
end

function ReleaseLUT(lut::Ref{vx_lut})
    ccall((:vxReleaseLUT, :libopenvx), vx_status, (Ref{vx_lut},), lut)
end

function QueryLUT(lut::vx_lut, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryLUT, :libopenvx), vx_status, (vx_lut, vx_enum, Ref{Cvoid}, vx_size), lut, attribute, ptr, size)
end

function CopyLUT(lut::vx_lut, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyLUT, :libopenvx), vx_status, (vx_lut, Ref{Cvoid}, vx_enum, vx_enum), lut, user_ptr, usage, user_mem_type)
end

function MapLUT(lut::vx_lut, map_id::Ref{vx_map_id}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum, mem_type::vx_enum, flags::vx_bitfield)
    ccall((:vxMapLUT, :libopenvx), vx_status, (vx_lut, Ref{vx_map_id}, Ref{Ptr{Cvoid}}, vx_enum, vx_enum, vx_bitfield), lut, map_id, ptr, usage, mem_type, flags)
end

function UnmapLUT(lut::vx_lut, map_id::vx_map_id)
    ccall((:vxUnmapLUT, :libopenvx), vx_status, (vx_lut, vx_map_id), lut, map_id)
end

function CreateDistribution(context::vx_context, numBins::vx_size, offset::vx_int32, range::vx_uint32)
    ccall((:vxCreateDistribution, :libopenvx), vx_distribution, (vx_context, vx_size, vx_int32, vx_uint32), context, numBins, offset, range)
end

function CreateVirtualDistribution(graph::vx_graph, numBins::vx_size, offset::vx_int32, range::vx_uint32)
    ccall((:vxCreateVirtualDistribution, :libopenvx), vx_distribution, (vx_graph, vx_size, vx_int32, vx_uint32), graph, numBins, offset, range)
end

function ReleaseDistribution(distribution::Ref{vx_distribution})
    ccall((:vxReleaseDistribution, :libopenvx), vx_status, (Ref{vx_distribution},), distribution)
end

function QueryDistribution(distribution::vx_distribution, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryDistribution, :libopenvx), vx_status, (vx_distribution, vx_enum, Ref{Cvoid}, vx_size), distribution, attribute, ptr, size)
end

function CopyDistribution(distribution::vx_distribution, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyDistribution, :libopenvx), vx_status, (vx_distribution, Ref{Cvoid}, vx_enum, vx_enum), distribution, user_ptr, usage, user_mem_type)
end

function MapDistribution(distribution::vx_distribution, map_id::Ref{vx_map_id}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum, mem_type::vx_enum, flags::vx_bitfield)
    ccall((:vxMapDistribution, :libopenvx), vx_status, (vx_distribution, Ref{vx_map_id}, Ref{Ptr{Cvoid}}, vx_enum, vx_enum, vx_bitfield), distribution, map_id, ptr, usage, mem_type, flags)
end

function UnmapDistribution(distribution::vx_distribution, map_id::vx_map_id)
    ccall((:vxUnmapDistribution, :libopenvx), vx_status, (vx_distribution, vx_map_id), distribution, map_id)
end

function CreateThresholdForImage(context::vx_context, thresh_type::vx_enum, input_format::vx_df_image, output_format::vx_df_image)
    ccall((:vxCreateThresholdForImage, :libopenvx), vx_threshold, (vx_context, vx_enum, vx_df_image, vx_df_image), context, thresh_type, input_format, output_format)
end

function CreateVirtualThresholdForImage(graph::vx_graph, thresh_type::vx_enum, input_format::vx_df_image, output_format::vx_df_image)
    ccall((:vxCreateVirtualThresholdForImage, :libopenvx), vx_threshold, (vx_graph, vx_enum, vx_df_image, vx_df_image), graph, thresh_type, input_format, output_format)
end

function CopyThresholdValue(thresh::vx_threshold, value_ptr::Ref{vx_pixel_value_t}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyThresholdValue, :libopenvx), vx_status, (vx_threshold, Ref{vx_pixel_value_t}, vx_enum, vx_enum), thresh, value_ptr, usage, user_mem_type)
end

function CopyThresholdRange(thresh::vx_threshold, lower_value_ptr::Ref{vx_pixel_value_t}, upper_value_ptr::Ref{vx_pixel_value_t}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyThresholdRange, :libopenvx), vx_status, (vx_threshold, Ref{vx_pixel_value_t}, Ref{vx_pixel_value_t}, vx_enum, vx_enum), thresh, lower_value_ptr, upper_value_ptr, usage, user_mem_type)
end

function CopyThresholdOutput(thresh::vx_threshold, true_value_ptr::Ref{vx_pixel_value_t}, false_value_ptr::Ref{vx_pixel_value_t}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyThresholdOutput, :libopenvx), vx_status, (vx_threshold, Ref{vx_pixel_value_t}, Ref{vx_pixel_value_t}, vx_enum, vx_enum), thresh, true_value_ptr, false_value_ptr, usage, user_mem_type)
end

function ReleaseThreshold(thresh::Ref{vx_threshold})
    ccall((:vxReleaseThreshold, :libopenvx), vx_status, (Ref{vx_threshold},), thresh)
end

function SetThresholdAttribute(thresh::vx_threshold, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetThresholdAttribute, :libopenvx), vx_status, (vx_threshold, vx_enum, Ref{Cvoid}, vx_size), thresh, attribute, ptr, size)
end

function QueryThreshold(thresh::vx_threshold, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryThreshold, :libopenvx), vx_status, (vx_threshold, vx_enum, Ref{Cvoid}, vx_size), thresh, attribute, ptr, size)
end

function CreateMatrix(c::vx_context, data_type::vx_enum, columns::vx_size, rows::vx_size)
    ccall((:vxCreateMatrix, :libopenvx), vx_matrix, (vx_context, vx_enum, vx_size, vx_size), c, data_type, columns, rows)
end

function CreateVirtualMatrix(graph::vx_graph, data_type::vx_enum, columns::vx_size, rows::vx_size)
    ccall((:vxCreateVirtualMatrix, :libopenvx), vx_matrix, (vx_graph, vx_enum, vx_size, vx_size), graph, data_type, columns, rows)
end

function ReleaseMatrix(mat::Ref{vx_matrix})
    ccall((:vxReleaseMatrix, :libopenvx), vx_status, (Ref{vx_matrix},), mat)
end

function QueryMatrix(mat::vx_matrix, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryMatrix, :libopenvx), vx_status, (vx_matrix, vx_enum, Ref{Cvoid}, vx_size), mat, attribute, ptr, size)
end

function CopyMatrix(matrix::vx_matrix, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyMatrix, :libopenvx), vx_status, (vx_matrix, Ref{Cvoid}, vx_enum, vx_enum), matrix, user_ptr, usage, user_mem_type)
end

function CreateMatrixFromPattern(context::vx_context, pattern::vx_enum, columns::vx_size, rows::vx_size)
    ccall((:vxCreateMatrixFromPattern, :libopenvx), vx_matrix, (vx_context, vx_enum, vx_size, vx_size), context, pattern, columns, rows)
end

function CreateMatrixFromPatternAndOrigin(context::vx_context, pattern::vx_enum, columns::vx_size, rows::vx_size, origin_col::vx_size, origin_row::vx_size)
    ccall((:vxCreateMatrixFromPatternAndOrigin, :libopenvx), vx_matrix, (vx_context, vx_enum, vx_size, vx_size, vx_size, vx_size), context, pattern, columns, rows, origin_col, origin_row)
end

function CreateConvolution(context::vx_context, columns::vx_size, rows::vx_size)
    ccall((:vxCreateConvolution, :libopenvx), vx_convolution, (vx_context, vx_size, vx_size), context, columns, rows)
end

function CreateVirtualConvolution(graph::vx_graph, columns::vx_size, rows::vx_size)
    ccall((:vxCreateVirtualConvolution, :libopenvx), vx_convolution, (vx_graph, vx_size, vx_size), graph, columns, rows)
end

function ReleaseConvolution(conv::Ref{vx_convolution})
    ccall((:vxReleaseConvolution, :libopenvx), vx_status, (Ref{vx_convolution},), conv)
end

function QueryConvolution(conv::vx_convolution, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryConvolution, :libopenvx), vx_status, (vx_convolution, vx_enum, Ref{Cvoid}, vx_size), conv, attribute, ptr, size)
end

function SetConvolutionAttribute(conv::vx_convolution, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetConvolutionAttribute, :libopenvx), vx_status, (vx_convolution, vx_enum, Ref{Cvoid}, vx_size), conv, attribute, ptr, size)
end

function CopyConvolutionCoefficients(conv::vx_convolution, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyConvolutionCoefficients, :libopenvx), vx_status, (vx_convolution, Ref{Cvoid}, vx_enum, vx_enum), conv, user_ptr, usage, user_mem_type)
end

function CreatePyramid(context::vx_context, levels::vx_size, scale::vx_float32, width::vx_uint32, height::vx_uint32, format::vx_df_image)
    ccall((:vxCreatePyramid, :libopenvx), vx_pyramid, (vx_context, vx_size, vx_float32, vx_uint32, vx_uint32, vx_df_image), context, levels, scale, width, height, format)
end

function CreateVirtualPyramid(graph::vx_graph, levels::vx_size, scale::vx_float32, width::vx_uint32, height::vx_uint32, format::vx_df_image)
    ccall((:vxCreateVirtualPyramid, :libopenvx), vx_pyramid, (vx_graph, vx_size, vx_float32, vx_uint32, vx_uint32, vx_df_image), graph, levels, scale, width, height, format)
end

function ReleasePyramid(pyr::Ref{vx_pyramid})
    ccall((:vxReleasePyramid, :libopenvx), vx_status, (Ref{vx_pyramid},), pyr)
end

function QueryPyramid(pyr::vx_pyramid, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryPyramid, :libopenvx), vx_status, (vx_pyramid, vx_enum, Ref{Cvoid}, vx_size), pyr, attribute, ptr, size)
end

function GetPyramidLevel(pyr::vx_pyramid, index::vx_uint32)
    ccall((:vxGetPyramidLevel, :libopenvx), vx_image, (vx_pyramid, vx_uint32), pyr, index)
end

function CreateRemap(context::vx_context, src_width::vx_uint32, src_height::vx_uint32, dst_width::vx_uint32, dst_height::vx_uint32)
    ccall((:vxCreateRemap, :libopenvx), vx_remap, (vx_context, vx_uint32, vx_uint32, vx_uint32, vx_uint32), context, src_width, src_height, dst_width, dst_height)
end

function CreateVirtualRemap(graph::vx_graph, src_width::vx_uint32, src_height::vx_uint32, dst_width::vx_uint32, dst_height::vx_uint32)
    ccall((:vxCreateVirtualRemap, :libopenvx), vx_remap, (vx_graph, vx_uint32, vx_uint32, vx_uint32, vx_uint32), graph, src_width, src_height, dst_width, dst_height)
end

function ReleaseRemap(table::Ref{vx_remap})
    ccall((:vxReleaseRemap, :libopenvx), vx_status, (Ref{vx_remap},), table)
end

function MapRemapPatch(remap::vx_remap, rect::Ref{vx_rectangle_t}, map_id::Ref{vx_map_id}, stride_y::Ref{vx_size}, ptr::Ref{Ptr{Cvoid}}, coordinate_type::vx_enum, usage::vx_enum, mem_type::vx_enum)
    ccall((:vxMapRemapPatch, :libopenvx), vx_status, (vx_remap, Ref{vx_rectangle_t}, Ref{vx_map_id}, Ref{vx_size}, Ref{Ptr{Cvoid}}, vx_enum, vx_enum, vx_enum), remap, rect, map_id, stride_y, ptr, coordinate_type, usage, mem_type)
end

function UnmapRemapPatch(remap::vx_remap, map_id::vx_map_id)
    ccall((:vxUnmapRemapPatch, :libopenvx), vx_status, (vx_remap, vx_map_id), remap, map_id)
end

function CopyRemapPatch(remap::vx_remap, rect::Ref{vx_rectangle_t}, user_stride_y::vx_size, user_ptr::Ref{Cvoid}, user_coordinate_type::vx_enum, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyRemapPatch, :libopenvx), vx_status, (vx_remap, Ref{vx_rectangle_t}, vx_size, Ref{Cvoid}, vx_enum, vx_enum, vx_enum), remap, rect, user_stride_y, user_ptr, user_coordinate_type, usage, user_mem_type)
end

function QueryRemap(table::vx_remap, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryRemap, :libopenvx), vx_status, (vx_remap, vx_enum, Ref{Cvoid}, vx_size), table, attribute, ptr, size)
end

function CreateArray(context::vx_context, item_type::vx_enum, capacity::vx_size)
    ccall((:vxCreateArray, :libopenvx), vx_array, (vx_context, vx_enum, vx_size), context, item_type, capacity)
end

function CreateVirtualArray(graph::vx_graph, item_type::vx_enum, capacity::vx_size)
    ccall((:vxCreateVirtualArray, :libopenvx), vx_array, (vx_graph, vx_enum, vx_size), graph, item_type, capacity)
end

function ReleaseArray(arr::Ref{vx_array})
    ccall((:vxReleaseArray, :libopenvx), vx_status, (Ref{vx_array},), arr)
end

function QueryArray(arr::vx_array, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryArray, :libopenvx), vx_status, (vx_array, vx_enum, Ref{Cvoid}, vx_size), arr, attribute, ptr, size)
end

function AddArrayItems(arr::vx_array, count::vx_size, ptr::Ref{Cvoid}, stride::vx_size)
    ccall((:vxAddArrayItems, :libopenvx), vx_status, (vx_array, vx_size, Ref{Cvoid}, vx_size), arr, count, ptr, stride)
end

function TruncateArray(arr::vx_array, new_num_items::vx_size)
    ccall((:vxTruncateArray, :libopenvx), vx_status, (vx_array, vx_size), arr, new_num_items)
end

function CopyArrayRange(array::vx_array, range_start::vx_size, range_end::vx_size, user_stride::vx_size, user_ptr::Ref{Cvoid}, usage::vx_enum, user_mem_type::vx_enum)
    ccall((:vxCopyArrayRange, :libopenvx), vx_status, (vx_array, vx_size, vx_size, vx_size, Ref{Cvoid}, vx_enum, vx_enum), array, range_start, range_end, user_stride, user_ptr, usage, user_mem_type)
end

function MapArrayRange(array::vx_array, range_start::vx_size, range_end::vx_size, map_id::Ref{vx_map_id}, stride::Ref{vx_size}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum, mem_type::vx_enum, flags::vx_uint32)
    ccall((:vxMapArrayRange, :libopenvx), vx_status, (vx_array, vx_size, vx_size, Ref{vx_map_id}, Ref{vx_size}, Ref{Ptr{Cvoid}}, vx_enum, vx_enum, vx_uint32), array, range_start, range_end, map_id, stride, ptr, usage, mem_type, flags)
end

function UnmapArrayRange(array::vx_array, map_id::vx_map_id)
    ccall((:vxUnmapArrayRange, :libopenvx), vx_status, (vx_array, vx_map_id), array, map_id)
end

function CreateObjectArray(context::vx_context, exemplar::vx_reference, count::vx_size)
    ccall((:vxCreateObjectArray, :libopenvx), vx_object_array, (vx_context, vx_reference, vx_size), context, exemplar, count)
end

function CreateVirtualObjectArray(graph::vx_graph, exemplar::vx_reference, count::vx_size)
    ccall((:vxCreateVirtualObjectArray, :libopenvx), vx_object_array, (vx_graph, vx_reference, vx_size), graph, exemplar, count)
end

function GetObjectArrayItem(arr::vx_object_array, index::vx_uint32)
    ccall((:vxGetObjectArrayItem, :libopenvx), vx_reference, (vx_object_array, vx_uint32), arr, index)
end

function ReleaseObjectArray(arr::Ref{vx_object_array})
    ccall((:vxReleaseObjectArray, :libopenvx), vx_status, (Ref{vx_object_array},), arr)
end

function QueryObjectArray(arr::vx_object_array, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryObjectArray, :libopenvx), vx_status, (vx_object_array, vx_enum, Ref{Cvoid}, vx_size), arr, attribute, ptr, size)
end

function SetMetaFormatAttribute(meta::vx_meta_format, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetMetaFormatAttribute, :libopenvx), vx_status, (vx_meta_format, vx_enum, Ref{Cvoid}, vx_size), meta, attribute, ptr, size)
end

function SetMetaFormatFromReference(meta::vx_meta_format, exemplar::vx_reference)
    ccall((:vxSetMetaFormatFromReference, :libopenvx), vx_status, (vx_meta_format, vx_reference), meta, exemplar)
end

function CreateTensor(context::vx_context, number_of_dims::vx_size, dims::Ref{vx_size}, data_type::vx_enum, fixed_point_position::vx_int8)
    ccall((:vxCreateTensor, :libopenvx), vx_tensor, (vx_context, vx_size, Ref{vx_size}, vx_enum, vx_int8), context, number_of_dims, dims, data_type, fixed_point_position)
end

function CreateImageObjectArrayFromTensor(tensor::vx_tensor, rect::Ref{vx_rectangle_t}, array_size::vx_size, jump::vx_size, image_format::vx_df_image)
    ccall((:vxCreateImageObjectArrayFromTensor, :libopenvx), vx_object_array, (vx_tensor, Ref{vx_rectangle_t}, vx_size, vx_size, vx_df_image), tensor, rect, array_size, jump, image_format)
end

function CreateTensorFromView(tensor::vx_tensor, number_of_dims::vx_size, view_start::Ref{vx_size}, view_end::Ref{vx_size})
    ccall((:vxCreateTensorFromView, :libopenvx), vx_tensor, (vx_tensor, vx_size, Ref{vx_size}, Ref{vx_size}), tensor, number_of_dims, view_start, view_end)
end

function CreateVirtualTensor(graph::vx_graph, number_of_dims::vx_size, dims::Ref{vx_size}, data_type::vx_enum, fixed_point_position::vx_int8)
    ccall((:vxCreateVirtualTensor, :libopenvx), vx_tensor, (vx_graph, vx_size, Ref{vx_size}, vx_enum, vx_int8), graph, number_of_dims, dims, data_type, fixed_point_position)
end

function CopyTensorPatch(tensor::vx_tensor, number_of_dims::vx_size, view_start::Ref{vx_size}, view_end::Ref{vx_size}, user_stride::Ref{vx_size}, user_ptr::Ref{Cvoid}, usage::vx_enum, user_memory_type::vx_enum)
    ccall((:vxCopyTensorPatch, :libopenvx), vx_status, (vx_tensor, vx_size, Ref{vx_size}, Ref{vx_size}, Ref{vx_size}, Ref{Cvoid}, vx_enum, vx_enum), tensor, number_of_dims, view_start, view_end, user_stride, user_ptr, usage, user_memory_type)
end

function QueryTensor(tensor::vx_tensor, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryTensor, :libopenvx), vx_status, (vx_tensor, vx_enum, Ref{Cvoid}, vx_size), tensor, attribute, ptr, size)
end

function ReleaseTensor(tensor::Ref{vx_tensor})
    ccall((:vxReleaseTensor, :libopenvx), vx_status, (Ref{vx_tensor},), tensor)
end

function ColorConvertNode(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxColorConvertNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function ChannelExtractNode(graph::vx_graph, input::vx_image, channel::vx_enum, output::vx_image)
    ccall((:vxChannelExtractNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_enum, vx_image), graph, input, channel, output)
end

function ChannelCombineNode(graph::vx_graph, plane0::vx_image, plane1::vx_image, plane2::vx_image, plane3::vx_image, output::vx_image)
    ccall((:vxChannelCombineNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image, vx_image, vx_image), graph, plane0, plane1, plane2, plane3, output)
end

function PhaseNode(graph::vx_graph, grad_x::vx_image, grad_y::vx_image, orientation::vx_image)
    ccall((:vxPhaseNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, grad_x, grad_y, orientation)
end

function Sobel3x3Node(graph::vx_graph, input::vx_image, output_x::vx_image, output_y::vx_image)
    ccall((:vxSobel3x3Node, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, input, output_x, output_y)
end

function MagnitudeNode(graph::vx_graph, grad_x::vx_image, grad_y::vx_image, mag::vx_image)
    ccall((:vxMagnitudeNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, grad_x, grad_y, mag)
end

function ScaleImageNode(graph::vx_graph, src::vx_image, dst::vx_image, type::vx_enum)
    ccall((:vxScaleImageNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_enum), graph, src, dst, type)
end

function TableLookupNode(graph::vx_graph, input::vx_image, lut::vx_lut, output::vx_image)
    ccall((:vxTableLookupNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_lut, vx_image), graph, input, lut, output)
end

function HistogramNode(graph::vx_graph, input::vx_image, distribution::vx_distribution)
    ccall((:vxHistogramNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_distribution), graph, input, distribution)
end

function EqualizeHistNode(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxEqualizeHistNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function AbsDiffNode(graph::vx_graph, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxAbsDiffNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, in1, in2, out)
end

function MeanStdDevNode(graph::vx_graph, input::vx_image, mean::vx_scalar, stddev::vx_scalar)
    ccall((:vxMeanStdDevNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_scalar, vx_scalar), graph, input, mean, stddev)
end

function ThresholdNode(graph::vx_graph, input::vx_image, thresh::vx_threshold, output::vx_image)
    ccall((:vxThresholdNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_threshold, vx_image), graph, input, thresh, output)
end

function NonMaxSuppressionNode(graph::vx_graph, input::vx_image, mask::vx_image, win_size::vx_int32, output::vx_image)
    ccall((:vxNonMaxSuppressionNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_int32, vx_image), graph, input, mask, win_size, output)
end

function IntegralImageNode(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxIntegralImageNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function Erode3x3Node(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxErode3x3Node, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function Dilate3x3Node(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxDilate3x3Node, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function Median3x3Node(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxMedian3x3Node, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function Box3x3Node(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxBox3x3Node, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function Gaussian3x3Node(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxGaussian3x3Node, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function NonLinearFilterNode(graph::vx_graph, _function::vx_enum, input::vx_image, mask::vx_matrix, output::vx_image)
    ccall((:vxNonLinearFilterNode, :libopenvx), vx_node, (vx_graph, vx_enum, vx_image, vx_matrix, vx_image), graph, _function, input, mask, output)
end

function ConvolveNode(graph::vx_graph, input::vx_image, conv::vx_convolution, output::vx_image)
    ccall((:vxConvolveNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_convolution, vx_image), graph, input, conv, output)
end

function GaussianPyramidNode(graph::vx_graph, input::vx_image, gaussian::vx_pyramid)
    ccall((:vxGaussianPyramidNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_pyramid), graph, input, gaussian)
end

function LaplacianPyramidNode(graph::vx_graph, input::vx_image, laplacian::vx_pyramid, output::vx_image)
    ccall((:vxLaplacianPyramidNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_pyramid, vx_image), graph, input, laplacian, output)
end

function LaplacianReconstructNode(graph::vx_graph, laplacian::vx_pyramid, input::vx_image, output::vx_image)
    ccall((:vxLaplacianReconstructNode, :libopenvx), vx_node, (vx_graph, vx_pyramid, vx_image, vx_image), graph, laplacian, input, output)
end

function AccumulateImageNode(graph::vx_graph, input::vx_image, accum::vx_image)
    ccall((:vxAccumulateImageNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, accum)
end

function AccumulateWeightedImageNode(graph::vx_graph, input::vx_image, alpha::vx_scalar, accum::vx_image)
    ccall((:vxAccumulateWeightedImageNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_scalar, vx_image), graph, input, alpha, accum)
end

function AccumulateSquareImageNode(graph::vx_graph, input::vx_image, shift::vx_scalar, accum::vx_image)
    ccall((:vxAccumulateSquareImageNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_scalar, vx_image), graph, input, shift, accum)
end

function MinMaxLocNode(graph::vx_graph, input::vx_image, minVal::vx_scalar, maxVal::vx_scalar, minLoc::vx_array, maxLoc::vx_array, minCount::vx_scalar, maxCount::vx_scalar)
    ccall((:vxMinMaxLocNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_scalar, vx_scalar, vx_array, vx_array, vx_scalar, vx_scalar), graph, input, minVal, maxVal, minLoc, maxLoc, minCount, maxCount)
end

function MinNode(graph::vx_graph, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxMinNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, in1, in2, out)
end

function MaxNode(graph::vx_graph, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxMaxNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, in1, in2, out)
end

function AndNode(graph::vx_graph, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxAndNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, in1, in2, out)
end

function OrNode(graph::vx_graph, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxOrNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, in1, in2, out)
end

function XorNode(graph::vx_graph, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxXorNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_image), graph, in1, in2, out)
end

function NotNode(graph::vx_graph, input::vx_image, output::vx_image)
    ccall((:vxNotNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image), graph, input, output)
end

function ScalarOperationNode(graph::vx_graph, scalar_operation::vx_enum, a::vx_scalar, b::vx_scalar, output::vx_scalar)
    ccall((:vxScalarOperationNode, :libopenvx), vx_node, (vx_graph, vx_enum, vx_scalar, vx_scalar, vx_scalar), graph, scalar_operation, a, b, output)
end

function SelectNode(graph::vx_graph, condition::vx_scalar, true_value::vx_reference, false_value::vx_reference, output::vx_reference)
    ccall((:vxSelectNode, :libopenvx), vx_node, (vx_graph, vx_scalar, vx_reference, vx_reference, vx_reference), graph, condition, true_value, false_value, output)
end

function MultiplyNode(graph::vx_graph, in1::vx_image, in2::vx_image, scale::vx_scalar, overflow_policy::vx_enum, rounding_policy::vx_enum, out::vx_image)
    ccall((:vxMultiplyNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_scalar, vx_enum, vx_enum, vx_image), graph, in1, in2, scale, overflow_policy, rounding_policy, out)
end

function AddNode(graph::vx_graph, in1::vx_image, in2::vx_image, policy::vx_enum, out::vx_image)
    ccall((:vxAddNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_enum, vx_image), graph, in1, in2, policy, out)
end

function SubtractNode(graph::vx_graph, in1::vx_image, in2::vx_image, policy::vx_enum, out::vx_image)
    ccall((:vxSubtractNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_enum, vx_image), graph, in1, in2, policy, out)
end

function ConvertDepthNode(graph::vx_graph, input::vx_image, output::vx_image, policy::vx_enum, shift::vx_scalar)
    ccall((:vxConvertDepthNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_enum, vx_scalar), graph, input, output, policy, shift)
end

function CannyEdgeDetectorNode(graph::vx_graph, input::vx_image, hyst::vx_threshold, gradient_size::vx_int32, norm_type::vx_enum, output::vx_image)
    ccall((:vxCannyEdgeDetectorNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_threshold, vx_int32, vx_enum, vx_image), graph, input, hyst, gradient_size, norm_type, output)
end

function WarpAffineNode(graph::vx_graph, input::vx_image, matrix::vx_matrix, type::vx_enum, output::vx_image)
    ccall((:vxWarpAffineNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_matrix, vx_enum, vx_image), graph, input, matrix, type, output)
end

function WarpPerspectiveNode(graph::vx_graph, input::vx_image, matrix::vx_matrix, type::vx_enum, output::vx_image)
    ccall((:vxWarpPerspectiveNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_matrix, vx_enum, vx_image), graph, input, matrix, type, output)
end

function HarrisCornersNode(graph::vx_graph, input::vx_image, strength_thresh::vx_scalar, min_distance::vx_scalar, sensitivity::vx_scalar, gradient_size::vx_int32, block_size::vx_int32, corners::vx_array, num_corners::vx_scalar)
    ccall((:vxHarrisCornersNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_scalar, vx_scalar, vx_scalar, vx_int32, vx_int32, vx_array, vx_scalar), graph, input, strength_thresh, min_distance, sensitivity, gradient_size, block_size, corners, num_corners)
end

function FastCornersNode(graph::vx_graph, input::vx_image, strength_thresh::vx_scalar, nonmax_suppression::vx_bool, corners::vx_array, num_corners::vx_scalar)
    ccall((:vxFastCornersNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_scalar, vx_bool, vx_array, vx_scalar), graph, input, strength_thresh, nonmax_suppression, corners, num_corners)
end

function OpticalFlowPyrLKNode(graph::vx_graph, old_images::vx_pyramid, new_images::vx_pyramid, old_points::vx_array, new_points_estimates::vx_array, new_points::vx_array, termination::vx_enum, epsilon::vx_scalar, num_iterations::vx_scalar, use_initial_estimate::vx_scalar, window_dimension::vx_size)
    ccall((:vxOpticalFlowPyrLKNode, :libopenvx), vx_node, (vx_graph, vx_pyramid, vx_pyramid, vx_array, vx_array, vx_array, vx_enum, vx_scalar, vx_scalar, vx_scalar, vx_size), graph, old_images, new_images, old_points, new_points_estimates, new_points, termination, epsilon, num_iterations, use_initial_estimate, window_dimension)
end

function RemapNode(graph::vx_graph, input::vx_image, table::vx_remap, policy::vx_enum, output::vx_image)
    ccall((:vxRemapNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_remap, vx_enum, vx_image), graph, input, table, policy, output)
end

function HalfScaleGaussianNode(graph::vx_graph, input::vx_image, output::vx_image, kernel_size::vx_int32)
    ccall((:vxHalfScaleGaussianNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_int32), graph, input, output, kernel_size)
end

function MatchTemplateNode(graph::vx_graph, src::vx_image, templateImage::vx_image, matchingMethod::vx_enum, output::vx_image)
    ccall((:vxMatchTemplateNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_image, vx_enum, vx_image), graph, src, templateImage, matchingMethod, output)
end

function LBPNode(graph::vx_graph, in::vx_image, format::vx_enum, kernel_size::vx_int8, out::vx_image)
    ccall((:vxLBPNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_enum, vx_int8, vx_image), graph, in, format, kernel_size, out)
end

function HOGCellsNode(graph::vx_graph, input::vx_image, cell_width::vx_int32, cell_height::vx_int32, num_bins::vx_int32, magnitudes::vx_tensor, bins::vx_tensor)
    ccall((:vxHOGCellsNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_int32, vx_int32, vx_int32, vx_tensor, vx_tensor), graph, input, cell_width, cell_height, num_bins, magnitudes, bins)
end

function HOGFeaturesNode(graph::vx_graph, input::vx_image, magnitudes::vx_tensor, bins::vx_tensor, params::Ref{vx_hog_t}, hog_param_size::vx_size, features::vx_tensor)
    ccall((:vxHOGFeaturesNode, :libopenvx), vx_node, (vx_graph, vx_image, vx_tensor, vx_tensor, Ref{vx_hog_t}, vx_size, vx_tensor), graph, input, magnitudes, bins, params, hog_param_size, features)
end

function HoughLinesPNode(graph::vx_graph, input::vx_image, params::Ref{vx_hough_lines_p_t}, lines_array::vx_array, num_lines::vx_scalar)
    ccall((:vxHoughLinesPNode, :libopenvx), vx_node, (vx_graph, vx_image, Ref{vx_hough_lines_p_t}, vx_array, vx_scalar), graph, input, params, lines_array, num_lines)
end

function BilateralFilterNode(graph::vx_graph, src::vx_tensor, diameter::vx_int32, sigmaSpace::vx_float32, sigmaValues::vx_float32, dst::vx_tensor)
    ccall((:vxBilateralFilterNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_int32, vx_float32, vx_float32, vx_tensor), graph, src, diameter, sigmaSpace, sigmaValues, dst)
end

function TensorMultiplyNode(graph::vx_graph, input1::vx_tensor, input2::vx_tensor, scale::vx_scalar, overflow_policy::vx_enum, rounding_policy::vx_enum, output::vx_tensor)
    ccall((:vxTensorMultiplyNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_scalar, vx_enum, vx_enum, vx_tensor), graph, input1, input2, scale, overflow_policy, rounding_policy, output)
end

function TensorAddNode(graph::vx_graph, input1::vx_tensor, input2::vx_tensor, policy::vx_enum, output::vx_tensor)
    ccall((:vxTensorAddNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_enum, vx_tensor), graph, input1, input2, policy, output)
end

function TensorSubtractNode(graph::vx_graph, input1::vx_tensor, input2::vx_tensor, policy::vx_enum, output::vx_tensor)
    ccall((:vxTensorSubtractNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_enum, vx_tensor), graph, input1, input2, policy, output)
end

function TensorTableLookupNode(graph::vx_graph, input1::vx_tensor, lut::vx_lut, output::vx_tensor)
    ccall((:vxTensorTableLookupNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_lut, vx_tensor), graph, input1, lut, output)
end

function TensorTransposeNode(graph::vx_graph, input::vx_tensor, output::vx_tensor, dimension1::vx_size, dimension2::vx_size)
    ccall((:vxTensorTransposeNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_size, vx_size), graph, input, output, dimension1, dimension2)
end

function TensorConvertDepthNode(graph::vx_graph, input::vx_tensor, policy::vx_enum, norm::vx_scalar, offset::vx_scalar, output::vx_tensor)
    ccall((:vxTensorConvertDepthNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_enum, vx_scalar, vx_scalar, vx_tensor), graph, input, policy, norm, offset, output)
end

function TensorMatrixMultiplyNode(graph::vx_graph, input1::vx_tensor, input2::vx_tensor, input3::vx_tensor, matrix_multiply_params::Ref{vx_tensor_matrix_multiply_params_t}, output::vx_tensor)
    ccall((:vxTensorMatrixMultiplyNode, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_tensor, Ref{vx_tensor_matrix_multiply_params_t}, vx_tensor), graph, input1, input2, input3, matrix_multiply_params, output)
end

function CopyNode(graph::vx_graph, input::vx_reference, output::vx_reference)
    ccall((:vxCopyNode, :libopenvx), vx_node, (vx_graph, vx_reference, vx_reference), graph, input, output)
end

function ConvolutionLayer(graph::vx_graph, inputs::vx_tensor, weights::vx_tensor, biases::vx_tensor, convolution_params::Ref{vx_nn_convolution_params_t}, size_of_convolution_params::vx_size, outputs::vx_tensor)
    ccall((:vxConvolutionLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_tensor, Ref{vx_nn_convolution_params_t}, vx_size, vx_tensor), graph, inputs, weights, biases, convolution_params, size_of_convolution_params, outputs)
end

function FullyConnectedLayer(graph::vx_graph, inputs::vx_tensor, weights::vx_tensor, biases::vx_tensor, overflow_policy::vx_enum, rounding_policy::vx_enum, outputs::vx_tensor)
    ccall((:vxFullyConnectedLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_tensor, vx_enum, vx_enum, vx_tensor), graph, inputs, weights, biases, overflow_policy, rounding_policy, outputs)
end

function PoolingLayer(graph::vx_graph, inputs::vx_tensor, pooling_type::vx_enum, pooling_size_x::vx_size, pooling_size_y::vx_size, pooling_padding_x::vx_size, pooling_padding_y::vx_size, rounding::vx_enum, outputs::vx_tensor)
    ccall((:vxPoolingLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_enum, vx_size, vx_size, vx_size, vx_size, vx_enum, vx_tensor), graph, inputs, pooling_type, pooling_size_x, pooling_size_y, pooling_padding_x, pooling_padding_y, rounding, outputs)
end

function SoftmaxLayer(graph::vx_graph, inputs::vx_tensor, outputs::vx_tensor)
    ccall((:vxSoftmaxLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor), graph, inputs, outputs)
end

function NormalizationLayer(graph::vx_graph, inputs::vx_tensor, type::vx_enum, normalization_size::vx_size, alpha::vx_float32, beta::vx_float32, outputs::vx_tensor)
    ccall((:vxNormalizationLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_enum, vx_size, vx_float32, vx_float32, vx_tensor), graph, inputs, type, normalization_size, alpha, beta, outputs)
end

function ActivationLayer(graph::vx_graph, inputs::vx_tensor, _function::vx_enum, a::vx_float32, b::vx_float32, outputs::vx_tensor)
    ccall((:vxActivationLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_enum, vx_float32, vx_float32, vx_tensor), graph, inputs, _function, a, b, outputs)
end

function ROIPoolingLayer(graph::vx_graph, input_data::vx_tensor, input_rois::vx_tensor, roi_pool_params::Ref{vx_nn_roi_pool_params_t}, size_of_roi_params::vx_size, output_arr::vx_tensor)
    ccall((:vxROIPoolingLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, Ref{vx_nn_roi_pool_params_t}, vx_size, vx_tensor), graph, input_data, input_rois, roi_pool_params, size_of_roi_params, output_arr)
end

function DeconvolutionLayer(graph::vx_graph, inputs::vx_tensor, weights::vx_tensor, biases::vx_tensor, deconvolution_params::Ref{vx_nn_deconvolution_params_t}, size_of_deconv_params::vx_size, outputs::vx_tensor)
    ccall((:vxDeconvolutionLayer, :libopenvx), vx_node, (vx_graph, vx_tensor, vx_tensor, vx_tensor, Ref{vx_nn_deconvolution_params_t}, vx_size, vx_tensor), graph, inputs, weights, biases, deconvolution_params, size_of_deconv_params, outputs)
end

function MapTensorPatch(tensor::vx_tensor, num_of_dims::vx_size, roi_start::Ref{vx_size}, roi_end::Ref{vx_size}, map_id::Ref{vx_map_id}, stride::Ref{vx_size}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum, mem_type::vx_enum, flags::vx_uint32)
    ccall((:vxMapTensorPatch, :libopenvx), vx_status, (vx_tensor, vx_size, Ref{vx_size}, Ref{vx_size}, Ref{vx_map_id}, Ref{vx_size}, Ref{Ptr{Cvoid}}, vx_enum, vx_enum, vx_uint32), tensor, num_of_dims, roi_start, roi_end, map_id, stride, ptr, usage, mem_type, flags)
end

function UnmapTensorPatch(tensor::vx_tensor, map_id::vx_map_id)
    ccall((:vxUnmapTensorPatch, :libopenvx), vx_status, (vx_tensor, vx_map_id), tensor, map_id)
end

function GetReferenceName(ref::vx_reference, name::Ref{vx_char}, size::vx_size)
    ccall((:vxGetReferenceName, :libopenvx), vx_status, (vx_reference, Ref{vx_char}, vx_size), ref, name, size)
end

function SetModuleInternalData(context::vx_context, _module::Ref{vx_char}, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxSetModuleInternalData, :libopenvx), vx_status, (vx_context, Ref{vx_char}, Ref{Cvoid}, vx_size), context, _module, ptr, size)
end

function GetModuleInternalData(context::vx_context, _module::Ref{vx_char}, ptr::Ref{Ptr{Cvoid}}, size::Ref{vx_size})
    ccall((:vxGetModuleInternalData, :libopenvx), vx_status, (vx_context, Ref{vx_char}, Ref{Ptr{Cvoid}}, Ref{vx_size}), context, _module, ptr, size)
end

function SetModuleHandle(node::vx_node, _module::Ref{vx_char}, ptr::Ref{Cvoid})
    ccall((:vxSetModuleHandle, :libopenvx), vx_status, (vx_node, Ref{vx_char}, Ref{Cvoid}), node, _module, ptr)
end

function GetModuleHandle(node::vx_node, _module::Ref{vx_char}, ptr::Ref{Ptr{Cvoid}})
    ccall((:vxGetModuleHandle, :libopenvx), vx_status, (vx_node, Ref{vx_char}, Ref{Ptr{Cvoid}}), node, _module, ptr)
end

function SetContextImageFormatDescription(context::vx_context, format::vx_df_image, desc::Ref{AgoImageFormatDescription})
    ccall((:vxSetContextImageFormatDescription, :libopenvx), vx_status, (vx_context, vx_df_image, Ref{AgoImageFormatDescription}), context, format, desc)
end

function GetContextImageFormatDescription(context::vx_context, format::vx_df_image, desc::Ref{AgoImageFormatDescription})
    ccall((:vxGetContextImageFormatDescription, :libopenvx), vx_status, (vx_context, vx_df_image, Ref{AgoImageFormatDescription}), context, format, desc)
end

function CreateTensorFromHandle(context::vx_context, number_of_dims::vx_size, dims::Ref{vx_size}, data_type::vx_enum, fixed_point_position::vx_int8, stride::Ref{vx_size}, ptr::Ref{Cvoid}, memory_type::vx_enum)
    ccall((:vxCreateTensorFromHandle, :libopenvx), vx_tensor, (vx_context, vx_size, Ref{vx_size}, vx_enum, vx_int8, Ref{vx_size}, Ref{Cvoid}, vx_enum), context, number_of_dims, dims, data_type, fixed_point_position, stride, ptr, memory_type)
end

function SwapTensorHandle(tensor::vx_tensor, new_ptr::Ref{Cvoid}, prev_ptr::Ref{Ptr{Cvoid}})
    ccall((:vxSwapTensorHandle, :libopenvx), vx_status, (vx_tensor, Ref{Cvoid}, Ref{Ptr{Cvoid}}), tensor, new_ptr, prev_ptr)
end

function AliasTensor(tensorMaster::vx_tensor, offset::vx_size, tensor::vx_tensor)
    ccall((:vxAliasTensor, :libopenvx), vx_status, (vx_tensor, vx_size, vx_tensor), tensorMaster, offset, tensor)
end

function IsTensorAliased(tensorMaster::vx_tensor, offset::vx_size, tensor::vx_tensor)
    ccall((:vxIsTensorAliased, :libopenvx), vx_bool, (vx_tensor, vx_size, vx_tensor), tensorMaster, offset, tensor)
end

function ColorConvert(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuColorConvert, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function ChannelExtract(context::vx_context, input::vx_image, channel::vx_enum, output::vx_image)
    ccall((:vxuChannelExtract, :libopenvx), vx_status, (vx_context, vx_image, vx_enum, vx_image), context, input, channel, output)
end

function ChannelCombine(context::vx_context, plane0::vx_image, plane1::vx_image, plane2::vx_image, plane3::vx_image, output::vx_image)
    ccall((:vxuChannelCombine, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image, vx_image, vx_image), context, plane0, plane1, plane2, plane3, output)
end

function Sobel3x3(context::vx_context, input::vx_image, output_x::vx_image, output_y::vx_image)
    ccall((:vxuSobel3x3, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, input, output_x, output_y)
end

function Magnitude(context::vx_context, grad_x::vx_image, grad_y::vx_image, mag::vx_image)
    ccall((:vxuMagnitude, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, grad_x, grad_y, mag)
end

function Phase(context::vx_context, grad_x::vx_image, grad_y::vx_image, orientation::vx_image)
    ccall((:vxuPhase, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, grad_x, grad_y, orientation)
end

function ScaleImage(context::vx_context, src::vx_image, dst::vx_image, type::vx_enum)
    ccall((:vxuScaleImage, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_enum), context, src, dst, type)
end

function TableLookup(context::vx_context, input::vx_image, lut::vx_lut, output::vx_image)
    ccall((:vxuTableLookup, :libopenvx), vx_status, (vx_context, vx_image, vx_lut, vx_image), context, input, lut, output)
end

function Histogram(context::vx_context, input::vx_image, distribution::vx_distribution)
    ccall((:vxuHistogram, :libopenvx), vx_status, (vx_context, vx_image, vx_distribution), context, input, distribution)
end

function EqualizeHist(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuEqualizeHist, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function AbsDiff(context::vx_context, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxuAbsDiff, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, in1, in2, out)
end

function MeanStdDev(context::vx_context, input::vx_image, mean::Ref{vx_float32}, stddev::Ref{vx_float32})
    ccall((:vxuMeanStdDev, :libopenvx), vx_status, (vx_context, vx_image, Ref{vx_float32}, Ref{vx_float32}), context, input, mean, stddev)
end

function Threshold(context::vx_context, input::vx_image, thresh::vx_threshold, output::vx_image)
    ccall((:vxuThreshold, :libopenvx), vx_status, (vx_context, vx_image, vx_threshold, vx_image), context, input, thresh, output)
end

function NonMaxSuppression(context::vx_context, input::vx_image, mask::vx_image, win_size::vx_int32, output::vx_image)
    ccall((:vxuNonMaxSuppression, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_int32, vx_image), context, input, mask, win_size, output)
end

function IntegralImage(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuIntegralImage, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function Erode3x3(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuErode3x3, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function Dilate3x3(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuDilate3x3, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function Median3x3(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuMedian3x3, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function Box3x3(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuBox3x3, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function Gaussian3x3(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuGaussian3x3, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function NonLinearFilter(context::vx_context, _function::vx_enum, input::vx_image, mask::vx_matrix, output::vx_image)
    ccall((:vxuNonLinearFilter, :libopenvx), vx_status, (vx_context, vx_enum, vx_image, vx_matrix, vx_image), context, _function, input, mask, output)
end

function Convolve(context::vx_context, input::vx_image, conv::vx_convolution, output::vx_image)
    ccall((:vxuConvolve, :libopenvx), vx_status, (vx_context, vx_image, vx_convolution, vx_image), context, input, conv, output)
end

function GaussianPyramid(context::vx_context, input::vx_image, gaussian::vx_pyramid)
    ccall((:vxuGaussianPyramid, :libopenvx), vx_status, (vx_context, vx_image, vx_pyramid), context, input, gaussian)
end

function LaplacianPyramid(context::vx_context, input::vx_image, laplacian::vx_pyramid, output::vx_image)
    ccall((:vxuLaplacianPyramid, :libopenvx), vx_status, (vx_context, vx_image, vx_pyramid, vx_image), context, input, laplacian, output)
end

function LaplacianReconstruct(context::vx_context, laplacian::vx_pyramid, input::vx_image, output::vx_image)
    ccall((:vxuLaplacianReconstruct, :libopenvx), vx_status, (vx_context, vx_pyramid, vx_image, vx_image), context, laplacian, input, output)
end

function AccumulateImage(context::vx_context, input::vx_image, accum::vx_image)
    ccall((:vxuAccumulateImage, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, accum)
end

function AccumulateWeightedImage(context::vx_context, input::vx_image, alpha::vx_scalar, accum::vx_image)
    ccall((:vxuAccumulateWeightedImage, :libopenvx), vx_status, (vx_context, vx_image, vx_scalar, vx_image), context, input, alpha, accum)
end

function AccumulateSquareImage(context::vx_context, input::vx_image, shift::vx_scalar, accum::vx_image)
    ccall((:vxuAccumulateSquareImage, :libopenvx), vx_status, (vx_context, vx_image, vx_scalar, vx_image), context, input, shift, accum)
end

function MinMaxLoc(context::vx_context, input::vx_image, minVal::vx_scalar, maxVal::vx_scalar, minLoc::vx_array, maxLoc::vx_array, minCount::vx_scalar, maxCount::vx_scalar)
    ccall((:vxuMinMaxLoc, :libopenvx), vx_status, (vx_context, vx_image, vx_scalar, vx_scalar, vx_array, vx_array, vx_scalar, vx_scalar), context, input, minVal, maxVal, minLoc, maxLoc, minCount, maxCount)
end

function Min(context::vx_context, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxuMin, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, in1, in2, out)
end

function Max(context::vx_context, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxuMax, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, in1, in2, out)
end

function ConvertDepth(context::vx_context, input::vx_image, output::vx_image, policy::vx_enum, shift::vx_int32)
    ccall((:vxuConvertDepth, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_enum, vx_int32), context, input, output, policy, shift)
end

function CannyEdgeDetector(context::vx_context, input::vx_image, hyst::vx_threshold, gradient_size::vx_int32, norm_type::vx_enum, output::vx_image)
    ccall((:vxuCannyEdgeDetector, :libopenvx), vx_status, (vx_context, vx_image, vx_threshold, vx_int32, vx_enum, vx_image), context, input, hyst, gradient_size, norm_type, output)
end

function HalfScaleGaussian(context::vx_context, input::vx_image, output::vx_image, kernel_size::vx_int32)
    ccall((:vxuHalfScaleGaussian, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_int32), context, input, output, kernel_size)
end

function And(context::vx_context, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxuAnd, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, in1, in2, out)
end

function Or(context::vx_context, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxuOr, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, in1, in2, out)
end

function Xor(context::vx_context, in1::vx_image, in2::vx_image, out::vx_image)
    ccall((:vxuXor, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_image), context, in1, in2, out)
end

function Not(context::vx_context, input::vx_image, output::vx_image)
    ccall((:vxuNot, :libopenvx), vx_status, (vx_context, vx_image, vx_image), context, input, output)
end

function Multiply(context::vx_context, in1::vx_image, in2::vx_image, scale::vx_float32, overflow_policy::vx_enum, rounding_policy::vx_enum, out::vx_image)
    ccall((:vxuMultiply, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_float32, vx_enum, vx_enum, vx_image), context, in1, in2, scale, overflow_policy, rounding_policy, out)
end

function Add(context::vx_context, in1::vx_image, in2::vx_image, policy::vx_enum, out::vx_image)
    ccall((:vxuAdd, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_enum, vx_image), context, in1, in2, policy, out)
end

function Subtract(context::vx_context, in1::vx_image, in2::vx_image, policy::vx_enum, out::vx_image)
    ccall((:vxuSubtract, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_enum, vx_image), context, in1, in2, policy, out)
end

function WarpAffine(context::vx_context, input::vx_image, matrix::vx_matrix, type::vx_enum, output::vx_image)
    ccall((:vxuWarpAffine, :libopenvx), vx_status, (vx_context, vx_image, vx_matrix, vx_enum, vx_image), context, input, matrix, type, output)
end

function WarpPerspective(context::vx_context, input::vx_image, matrix::vx_matrix, type::vx_enum, output::vx_image)
    ccall((:vxuWarpPerspective, :libopenvx), vx_status, (vx_context, vx_image, vx_matrix, vx_enum, vx_image), context, input, matrix, type, output)
end

function HarrisCorners(context::vx_context, input::vx_image, strength_thresh::vx_scalar, min_distance::vx_scalar, sensitivity::vx_scalar, gradient_size::vx_int32, block_size::vx_int32, corners::vx_array, num_corners::vx_scalar)
    ccall((:vxuHarrisCorners, :libopenvx), vx_status, (vx_context, vx_image, vx_scalar, vx_scalar, vx_scalar, vx_int32, vx_int32, vx_array, vx_scalar), context, input, strength_thresh, min_distance, sensitivity, gradient_size, block_size, corners, num_corners)
end

function FastCorners(context::vx_context, input::vx_image, strength_thresh::vx_scalar, nonmax_suppression::vx_bool, corners::vx_array, num_corners::vx_scalar)
    ccall((:vxuFastCorners, :libopenvx), vx_status, (vx_context, vx_image, vx_scalar, vx_bool, vx_array, vx_scalar), context, input, strength_thresh, nonmax_suppression, corners, num_corners)
end

function OpticalFlowPyrLK(context::vx_context, old_images::vx_pyramid, new_images::vx_pyramid, old_points::vx_array, new_points_estimates::vx_array, new_points::vx_array, termination::vx_enum, epsilon::vx_scalar, num_iterations::vx_scalar, use_initial_estimate::vx_scalar, window_dimension::vx_size)
    ccall((:vxuOpticalFlowPyrLK, :libopenvx), vx_status, (vx_context, vx_pyramid, vx_pyramid, vx_array, vx_array, vx_array, vx_enum, vx_scalar, vx_scalar, vx_scalar, vx_size), context, old_images, new_images, old_points, new_points_estimates, new_points, termination, epsilon, num_iterations, use_initial_estimate, window_dimension)
end

function MatchTemplate(context::vx_context, src::vx_image, templateImage::vx_image, matchingMethod::vx_enum, output::vx_image)
    ccall((:vxuMatchTemplate, :libopenvx), vx_status, (vx_context, vx_image, vx_image, vx_enum, vx_image), context, src, templateImage, matchingMethod, output)
end

function LBP(context::vx_context, in::vx_image, format::vx_enum, kernel_size::vx_int8, out::vx_image)
    ccall((:vxuLBP, :libopenvx), vx_status, (vx_context, vx_image, vx_enum, vx_int8, vx_image), context, in, format, kernel_size, out)
end

function HOGCells(context::vx_context, input::vx_image, cell_width::vx_int32, cell_height::vx_int32, num_bins::vx_int32, magnitudes::vx_tensor, bins::vx_tensor)
    ccall((:vxuHOGCells, :libopenvx), vx_status, (vx_context, vx_image, vx_int32, vx_int32, vx_int32, vx_tensor, vx_tensor), context, input, cell_width, cell_height, num_bins, magnitudes, bins)
end

function HOGFeatures(context::vx_context, input::vx_image, magnitudes::vx_tensor, bins::vx_tensor, params::Ref{vx_hog_t}, hog_param_size::vx_size, features::vx_tensor)
    ccall((:vxuHOGFeatures, :libopenvx), vx_status, (vx_context, vx_image, vx_tensor, vx_tensor, Ref{vx_hog_t}, vx_size, vx_tensor), context, input, magnitudes, bins, params, hog_param_size, features)
end

function HoughLinesP(context::vx_context, input::vx_image, params::Ref{vx_hough_lines_p_t}, lines_array::vx_array, num_lines::vx_scalar)
    ccall((:vxuHoughLinesP, :libopenvx), vx_status, (vx_context, vx_image, Ref{vx_hough_lines_p_t}, vx_array, vx_scalar), context, input, params, lines_array, num_lines)
end

function Remap(context::vx_context, input::vx_image, table::vx_remap, policy::vx_enum, output::vx_image)
    ccall((:vxuRemap, :libopenvx), vx_status, (vx_context, vx_image, vx_remap, vx_enum, vx_image), context, input, table, policy, output)
end

function BilateralFilter(context::vx_context, src::vx_tensor, diameter::vx_int32, sigmaSpace::vx_float32, sigmaValues::vx_float32, dst::vx_tensor)
    ccall((:vxuBilateralFilter, :libopenvx), vx_status, (vx_context, vx_tensor, vx_int32, vx_float32, vx_float32, vx_tensor), context, src, diameter, sigmaSpace, sigmaValues, dst)
end

function TensorMultiply(context::vx_context, input1::vx_tensor, input2::vx_tensor, scale::vx_scalar, overflow_policy::vx_enum, rounding_policy::vx_enum, output::vx_tensor)
    ccall((:vxuTensorMultiply, :libopenvx), vx_status, (vx_context, vx_tensor, vx_tensor, vx_scalar, vx_enum, vx_enum, vx_tensor), context, input1, input2, scale, overflow_policy, rounding_policy, output)
end

function TensorAdd(context::vx_context, input1::vx_tensor, input2::vx_tensor, policy::vx_enum, output::vx_tensor)
    ccall((:vxuTensorAdd, :libopenvx), vx_status, (vx_context, vx_tensor, vx_tensor, vx_enum, vx_tensor), context, input1, input2, policy, output)
end

function TensorSubtract(context::vx_context, input1::vx_tensor, input2::vx_tensor, policy::vx_enum, output::vx_tensor)
    ccall((:vxuTensorSubtract, :libopenvx), vx_status, (vx_context, vx_tensor, vx_tensor, vx_enum, vx_tensor), context, input1, input2, policy, output)
end

function TensorTableLookup(context::vx_context, input1::vx_tensor, lut::vx_lut, output::vx_tensor)
    ccall((:vxuTensorTableLookup, :libopenvx), vx_status, (vx_context, vx_tensor, vx_lut, vx_tensor), context, input1, lut, output)
end

function TensorTranspose(context::vx_context, input::vx_tensor, output::vx_tensor, dimension1::vx_size, dimension2::vx_size)
    ccall((:vxuTensorTranspose, :libopenvx), vx_status, (vx_context, vx_tensor, vx_tensor, vx_size, vx_size), context, input, output, dimension1, dimension2)
end

function TensorConvertDepth(context::vx_context, input::vx_tensor, policy::vx_enum, norm::vx_scalar, offset::vx_scalar, output::vx_tensor)
    ccall((:vxuTensorConvertDepth, :libopenvx), vx_status, (vx_context, vx_tensor, vx_enum, vx_scalar, vx_scalar, vx_tensor), context, input, policy, norm, offset, output)
end

function TensorMatrixMultiply(context::vx_context, input1::vx_tensor, input2::vx_tensor, input3::vx_tensor, matrix_multiply_params::Ref{vx_tensor_matrix_multiply_params_t}, output::vx_tensor)
    ccall((:vxuTensorMatrixMultiply, :libopenvx), vx_status, (vx_context, vx_tensor, vx_tensor, vx_tensor, Ref{vx_tensor_matrix_multiply_params_t}, vx_tensor), context, input1, input2, input3, matrix_multiply_params, output)
end

function Copy(context::vx_context, input::vx_reference, output::vx_reference)
    ccall((:vxuCopy, :libopenvx), vx_status, (vx_context, vx_reference, vx_reference), context, input, output)
end

function IcdGetPlatforms(capacity::vx_size, platform::Ref{vx_platform}, pNumItems::Ref{vx_size})
    ccall((:vxIcdGetPlatforms, :libopenvx), vx_status, (vx_size, Ref{vx_platform}, Ref{vx_size}), capacity, platform, pNumItems)
end

function QueryPlatform(platform::vx_platform, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryPlatform, :libopenvx), vx_status, (vx_platform, vx_enum, Ref{Cvoid}, vx_size), platform, attribute, ptr, size)
end

function CreateContextFromPlatform(platform::vx_platform)
    ccall((:vxCreateContextFromPlatform, :libopenvx), vx_context, (vx_platform,), platform)
end

function AddKernel(context::vx_context, name::Ref{vx_char}, enumeration::vx_enum, func_ptr::vx_kernel_f, numParams::vx_uint32, input::vx_kernel_input_validate_f, output::vx_kernel_output_validate_f, init::vx_kernel_initialize_f, deinit::vx_kernel_deinitialize_f)
    ccall((:vxAddKernel, :libopenvx), vx_kernel, (vx_context, Ref{vx_char}, vx_enum, vx_kernel_f, vx_uint32, vx_kernel_input_validate_f, vx_kernel_output_validate_f, vx_kernel_initialize_f, vx_kernel_deinitialize_f), context, name, enumeration, func_ptr, numParams, input, output, init, deinit)
end

function ComputeImagePatchSize(image::vx_image, rect::Ref{vx_rectangle_t}, plane_index::vx_uint32)
    ccall((:vxComputeImagePatchSize, :libopenvx), vx_size, (vx_image, Ref{vx_rectangle_t}, vx_uint32), image, rect, plane_index)
end

function AccessImagePatch(image::vx_image, rect::Ref{vx_rectangle_t}, plane_index::vx_uint32, addr::Ref{vx_imagepatch_addressing_t}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum)
    ccall((:vxAccessImagePatch, :libopenvx), vx_status, (vx_image, Ref{vx_rectangle_t}, vx_uint32, Ref{vx_imagepatch_addressing_t}, Ref{Ptr{Cvoid}}, vx_enum), image, rect, plane_index, addr, ptr, usage)
end

function CommitImagePatch(image::vx_image, rect::Ref{vx_rectangle_t}, plane_index::vx_uint32, addr::Ref{vx_imagepatch_addressing_t}, ptr::Ref{Cvoid})
    ccall((:vxCommitImagePatch, :libopenvx), vx_status, (vx_image, Ref{vx_rectangle_t}, vx_uint32, Ref{vx_imagepatch_addressing_t}, Ref{Cvoid}), image, rect, plane_index, addr, ptr)
end

function AccessArrayRange(arr::vx_array, start::vx_size, _end::vx_size, stride::Ref{vx_size}, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum)
    ccall((:vxAccessArrayRange, :libopenvx), vx_status, (vx_array, vx_size, vx_size, Ref{vx_size}, Ref{Ptr{Cvoid}}, vx_enum), arr, start, _end, stride, ptr, usage)
end

function CommitArrayRange(arr::vx_array, start::vx_size, _end::vx_size, ptr::Ref{Cvoid})
    ccall((:vxCommitArrayRange, :libopenvx), vx_status, (vx_array, vx_size, vx_size, Ref{Cvoid}), arr, start, _end, ptr)
end

function AccessDistribution(distribution::vx_distribution, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum)
    ccall((:vxAccessDistribution, :libopenvx), vx_status, (vx_distribution, Ref{Ptr{Cvoid}}, vx_enum), distribution, ptr, usage)
end

function CommitDistribution(distribution::vx_distribution, ptr::Ref{Cvoid})
    ccall((:vxCommitDistribution, :libopenvx), vx_status, (vx_distribution, Ref{Cvoid}), distribution, ptr)
end

function AccessLUT(lut::vx_lut, ptr::Ref{Ptr{Cvoid}}, usage::vx_enum)
    ccall((:vxAccessLUT, :libopenvx), vx_status, (vx_lut, Ref{Ptr{Cvoid}}, vx_enum), lut, ptr, usage)
end

function CommitLUT(lut::vx_lut, ptr::Ref{Cvoid})
    ccall((:vxCommitLUT, :libopenvx), vx_status, (vx_lut, Ref{Cvoid}), lut, ptr)
end

function ReadMatrix(mat::vx_matrix, array::Ref{Cvoid})
    ccall((:vxReadMatrix, :libopenvx), vx_status, (vx_matrix, Ref{Cvoid}), mat, array)
end

function WriteMatrix(mat::vx_matrix, array::Ref{Cvoid})
    ccall((:vxWriteMatrix, :libopenvx), vx_status, (vx_matrix, Ref{Cvoid}), mat, array)
end

function ReadConvolutionCoefficients(conv::vx_convolution, array::Ref{vx_int16})
    ccall((:vxReadConvolutionCoefficients, :libopenvx), vx_status, (vx_convolution, Ref{vx_int16}), conv, array)
end

function WriteConvolutionCoefficients(conv::vx_convolution, array::Ref{vx_int16})
    ccall((:vxWriteConvolutionCoefficients, :libopenvx), vx_status, (vx_convolution, Ref{vx_int16}), conv, array)
end

function ReadScalarValue(ref::vx_scalar, ptr::Ref{Cvoid})
    ccall((:vxReadScalarValue, :libopenvx), vx_status, (vx_scalar, Ref{Cvoid}), ref, ptr)
end

function WriteScalarValue(ref::vx_scalar, ptr::Ref{Cvoid})
    ccall((:vxWriteScalarValue, :libopenvx), vx_status, (vx_scalar, Ref{Cvoid}), ref, ptr)
end

function SetRemapPoint(table::vx_remap, dst_x::vx_uint32, dst_y::vx_uint32, src_x::vx_float32, src_y::vx_float32)
    ccall((:vxSetRemapPoint, :libopenvx), vx_status, (vx_remap, vx_uint32, vx_uint32, vx_float32, vx_float32), table, dst_x, dst_y, src_x, src_y)
end

function GetRemapPoint(table::vx_remap, dst_x::vx_uint32, dst_y::vx_uint32, src_x::Ref{vx_float32}, src_y::Ref{vx_float32})
    ccall((:vxGetRemapPoint, :libopenvx), vx_status, (vx_remap, vx_uint32, vx_uint32, Ref{vx_float32}, Ref{vx_float32}), table, dst_x, dst_y, src_x, src_y)
end

function CreateThreshold(c::vx_context, thresh_type::vx_enum, data_type::vx_enum)
    ccall((:vxCreateThreshold, :libopenvx), vx_threshold, (vx_context, vx_enum, vx_enum), c, thresh_type, data_type)
end

function AddTilingKernel(context::vx_context, name::Ref{vx_char}, enumeration::vx_enum, flexible_func_ptr::vx_tiling_kernel_f, fast_func_ptr::vx_tiling_kernel_f, num_params::vx_uint32, input::vx_kernel_input_validate_f, output::vx_kernel_output_validate_f)
    ccall((:vxAddTilingKernel, :libopenvx), vx_kernel, (vx_context, Ref{vx_char}, vx_enum, vx_tiling_kernel_f, vx_tiling_kernel_f, vx_uint32, vx_kernel_input_validate_f, vx_kernel_output_validate_f), context, name, enumeration, flexible_func_ptr, fast_func_ptr, num_params, input, output)
end

function ExportToXML(context::vx_context, xmlfile::Ref{vx_char})
    ccall((:vxExportToXML, :libopenvx), vx_status, (vx_context, Ref{vx_char}), context, xmlfile)
end

function ImportFromXML(context::vx_context, xmlfile::Ref{vx_char})
    ccall((:vxImportFromXML, :libopenvx), vx_import, (vx_context, Ref{vx_char}), context, xmlfile)
end

function GetImportReferenceByName(_import::vx_import, name::Ref{vx_char})
    ccall((:vxGetImportReferenceByName, :libopenvx), vx_reference, (vx_import, Ref{vx_char}), _import, name)
end

function GetImportReferenceByIndex(_import::vx_import, index::vx_uint32)
    ccall((:vxGetImportReferenceByIndex, :libopenvx), vx_reference, (vx_import, vx_uint32), _import, index)
end

function QueryImport(_import::vx_import, attribute::vx_enum, ptr::Ref{Cvoid}, size::vx_size)
    ccall((:vxQueryImport, :libopenvx), vx_status, (vx_import, vx_enum, Ref{Cvoid}, vx_size), _import, attribute, ptr, size)
end

function ReleaseImport(_import::Ref{vx_import})
    ccall((:vxReleaseImport, :libopenvx), vx_status, (Ref{vx_import},), _import)
end
