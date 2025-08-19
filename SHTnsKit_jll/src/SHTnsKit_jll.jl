module SHTnsKit_jll

using Artifacts
using Libdl

const _artifact_name = "SHTnsKit"

"""
Return the absolute path to the root of the SHTnsKit artifact directory.
This will trigger a download on first use if not already present.
"""
function artifact_dir()
    return Artifacts.@artifact_str _artifact_name
end

"""
Return the absolute path to a library inside the artifact's lib/ directory.
"""
libpath(libname::AbstractString) = joinpath(artifact_dir(), "lib", libname)

"""
dlopen both libs to validate availability at init time.
Closes immediately; callers can `Libdl.dlopen` again if needed.
"""
function __init__()
    for lib in ("libshtns.so", "libshtns_omp.so")
        p = libpath(lib)
        if !isfile(p)
            @warn "Library not found in artifact" lib=p
            continue
        end
        h = Libdl.dlopen_e(p)
        if h === nothing
            @error "Failed to dlopen library" lib=p
        else
            Libdl.dlclose(h)
        end
    end
end

end # module
