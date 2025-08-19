using Test
using Libdl
using SHTnsKit_jll

@test isdir(SHTnsKit_jll.artifact_dir())

for lib in ("libshtns.so", "libshtns_omp.so")
    p = SHTnsKit_jll.libpath(lib)
    @test isfile(p)
    h = Libdl.dlopen_e(p)
    @test h !== nothing
    h !== nothing && Libdl.dlclose(h)
end

