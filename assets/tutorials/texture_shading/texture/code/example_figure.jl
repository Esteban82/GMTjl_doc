# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT   # Hide
G = gmtread("@earth_relief_01s", region=(-112.06, -111.60, 35.97, 36.25));	# Hide
lelandshade(G, transparency=1.0, title="100 % texture shading", par=(FONT_TITLE=10,), show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_" * GMT.tmpdir_usr[2] * "." * "png"), joinpath(@OUTPUT, "example_6108172888711106299.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide