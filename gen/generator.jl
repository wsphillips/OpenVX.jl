using Clang, Clang.LibClang
using CEnum
using DataStructures, OrderedCollections

include("clanghelpers.jl")

const VX_INCLUDE = joinpath(
    homedir(),
    "git",
    "OpenVX.jl",
    "deps",
    "include",
    "VX"
)

const VX_HEADERS = [joinpath(VX_INCLUDE, header) for header in readdir(VX_INCLUDE) if endswith(header, ".h")]

ctx = DefaultContext()

parse_headers!(ctx, VX_HEADERS,
              args=["-I", VX_INCLUDE, "-fparse-all-comments"],
              includes=vcat(VX_INCLUDE, CLANG_INCLUDE),
              flags = CXTranslationUnit_DetailedPreprocessingRecord)

ctx.libname = "libopenvx"
ctx.options["is_function_strictly_typed"] = true
ctx.options["is_struct_mutable"] = false

blacklist = ["unix", "linux"]
blackprefix = ["Brig", "_"]

functions = Vector{CLCursor}()
remaining = Vector{CLCursor}()
typealiases = OrderedDict()

for trans_unit in ctx.trans_units

    root_cursor = getcursor(trans_unit)
    push!(ctx.cursor_stack, root_cursor)
    header = spelling(root_cursor)
    ctx.children = children(root_cursor)

    for (i, child) in enumerate(ctx.children)
        # Cursor properties
        child_name = name(child)
        child_kind = kind(child)
                
        # Skip compiler constants/garbage and redundants
        child_kind == CXCursor_MacroInstantiation   && continue
        child_kind == CXCursor_LastPreprocessing    && continue
        child_name ∈ blacklist                      && continue
        if (any(startswith.(child_name, blackprefix)) && child_kind == CXCursor_MacroDefinition)
            continue
        end
        child_name ∈ keys(ctx.common_buffer)        && continue
        child_name ∈ name.(functions)               && continue 
        child_kind == CXCursor_FunctionDecl     && (wrap_vx_fun!(ctx, child); push!(functions, child); continue)
        wrap!(ctx, child)       
    end
end


api_file = joinpath(@__DIR__, "libopenvx_api.jl")
api_stream = open(api_file, "w")
print_buffer(api_stream, ctx.api_buffer)
empty!(ctx.api_buffer)
close(api_stream)

common_file = joinpath(@__DIR__, "libopenvx_common.jl")
open(common_file, "w") do f
    print_buffer(f, dump_to_buffer(ctx.common_buffer))
end
