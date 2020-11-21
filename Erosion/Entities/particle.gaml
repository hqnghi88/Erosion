model particle

import "../models/Parameters.gaml"
import "dem.gaml"
species particle skills: [moving] { //parallel: true use_individual_shapes: false use_regular_agents: false use_neighbors_cache: false
	rgb color;
	string type;
	float power <- 0.0;
	float zz <- 0.0;

	reflex moving {
		do wander amplitude: 45.0 speed: 0.5;
		DEM d <- DEM at location;
		if (d != nil) {
			zz <- (d.grid_value - 95);
		}

	}

	aspect default {
	//		draw ((type = TYPE_CAR) ? rectangle(10, 5) : rectangle(5, 2)) rotated_by (heading) color: color border: #black depth: 3;
		draw cube(10 #m) color: #red at: {location.x, location.y, zz};
	}

}
  