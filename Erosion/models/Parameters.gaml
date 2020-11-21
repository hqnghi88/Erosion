model NewModel

global {
	bool paralleism <- true;
	bool recompute_path <- true;
	file grid_data <- file('../includes/dem.tif');
	file texture <- file('../includes/texture.png');
	shape_file extend_shp <- shape_file("../includes/extent.shp");
	geometry shape <- envelope(extend_shp);
}
 