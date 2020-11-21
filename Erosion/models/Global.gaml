model NewModel

import "Parameters.gaml"
import "../Entities/dem.gaml"
import "../Entities/particle.gaml"
global {

	init { 
		create particle number:100;
	} 
}

experiment main type:gui{
	output{
		display "main" type:opengl{
				grid DEM texture: texture text: false triangulation: true elevation: (grid_value - 95.0) refresh: false; //position:{0.0,0.0,-0.05}
				species particle;
		}
	}
}
 
 