model NewModel

import "Parameters.gaml"
import "../Entities/dem.gaml"
import "../Entities/particle.gaml"
global {
	float seed<-0.224;
	init { 
		create particle number:1000;
	} 
}

experiment main type:gui{
	output{
		display "main" type:opengl{
				grid DEM texture: texture text: false triangulation: true elevation: (grid_value - 95.0) refresh: true; //position:{0.0,0.0,-0.05}
				species particle;
		}
	}
}
 
 