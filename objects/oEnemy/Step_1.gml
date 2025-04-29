if(hp <= 0) {
	instance_destroy();
	
	with(instance_create_layer(x, y, "Enemy", oEnemyDie)) {
	
		hsp = lengthdir_x(5, other.hitFrom);
		vsp = lengthdir_y(-4, other.hitFrom) - 4;
		
		if(hsp != 0) {
			image_xscale = sign(hsp) * other.size;
			image_yscale = other.size;
		}
		
		/*
		show_debug_message("hsp: ");
		show_debug_message(hsp);
		show_debug_message("vsp: ");
		show_debug_message(vsp);
		*/
	}
}