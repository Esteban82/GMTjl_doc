# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
G, cl = worldrectangular("@earth_relief_30m_p", proj="vandg", latlim=(-70,85), coast=true);
grid = worldrectgrid(G);
grdimage(G, shade=true, plot=(data=cl,), cmap=:geo, B=:none, title="Van der Grinten")
plotgrid!(G, grid, figname="vandg.png", show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_" * GMT.tmpdir_usr[2] * ".png"), joinpath(@OUTPUT, "example_10201008077335209812.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide