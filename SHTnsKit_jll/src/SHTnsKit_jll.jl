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
    # Only attempt dlopen when the artifact is available and we're on a supported platform
    local _root
    try
        _root = artifact_dir()
    catch e
        @warn "Artifact not available on this platform; skipping dlopen" arch=Sys.ARCH os=Sys.KERNEL exception=e
        return
    end
    if Sys.isapple() && Sys.ARCH === :aarch64
        for lib in ("libshtns.so", "libshtns_omp.so")
            p = joinpath(_root, "lib", lib)
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
    else
        @info "Skipping dlopen on unsupported platform" arch=Sys.ARCH os=Sys.KERNEL
    end
end

end # module
