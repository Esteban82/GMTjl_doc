# This file was generated, do not modify it. # hide
begin # hide
	using GMT   # hide
	GMT.isFranklin[1] = true    # hide
	getpath4docs(file::String) = joinpath("..", "..", "..", "..", "..", file) # hide
	using GMT
resetGMT() # hide

lon  = 12.50
lat  = 41.99
Gdist = gmt("grdmath -Rg -I1 12.5 41.99 SDIST")

coast(region=:global, land=:lightgreen, ocean=:blue, shore=:thinnest, area=1000,
      frame=(grid=30, title="Distances from Rome to the World"),
      proj=(name=:Hammer, center=90), figsize=20, portrait=false)
grdcontour!(Gdist, annot=(int=1000, labels=(curved=true, unit="\" km\"", font="white")),
            labels=(line="Z-/Z+",), smooth=8, cont=500,
            pen=((contour=true,pen="thinnest,white,-"), (annot=true, pen="thin,white")) )

# Location info for 5 other cities + label justification
cities = [105.87 21.02; 282.95  -12.1; 178.42 -18.13; 237.67 47.58; 28.20 -25.75];
just_names = ["LM HANOI", "LM LIMA", "LM SUVA", "RM SEATTLE", "LM PRETORIA"];
D = mat2ds(cities, just_names)

# For each of the cities, plot great circle arc to Rome with gmt psxy
plot!([lon lat; 105.87 21.02], lw=:thickest, lc=:red)
plot!([lon lat; 282.95 -12.1], lw=:thickest, lc=:red)
plot!([lon lat; 178.42 -18.13],lw=:thickest, lc=:red)
plot!([lon lat; 237.67 47.58], lw=:thickest, lc=:red)
plot!([lon lat; 28.20 -25.75], lw=:thickest, lc=:red)

# Plot red squares at cities and plot names:
plot!(cities, marker=:square, ms=0.2, fill=:red, markerline=:thinnest)
text!(D, offset=(away=true, shift=(0.15,0)), font=(12,"Courier-Bold",:red),
      justify=true, no_clip=true)

# Place a yellow star at Rome
plot!([12.5 41.99], marker=:star, ms=0.5, fill=:yellow, ml=:thin)

# Sample the distance grid at the cities and use the distance in km for labels
dist = grdtrack(Gdist, D);
text!(dist, offset=(0, -0.5), noclip=true, fill=:white, pen=true, clearance=0.05,
      font=(12,"Helvetica-Bold"), justify=:CT, zvalues="%.0f", show=true)
end # hide
mv(joinpath(tempdir(), "GMTjl_" * GMT.tmpdir_usr[2] * "." * "png"), joinpath(@OUTPUT, "example_16483730124218359739.png"), force=true);    # hide
GMT.isFranklin[1] = false    # hide
GMT.IamModern[1]  = false    # hide
 
nothing # hide