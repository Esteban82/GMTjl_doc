# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
marginalhist(randn(2500,2), cmap=:lisbon, density=true, histkw=(fill="darkgreen@60",),
             aspect=:equal, show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_" * GMT.tmpdir_usr[2] * ".png"), joinpath(@OUTPUT, "example_16302237616148334249.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide