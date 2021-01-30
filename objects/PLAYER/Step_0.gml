//CAMERA CONTROL
camera_set_view_pos(view_camera[0],(x-camera_get_view_width(0)/2),(y-camera_get_view_height(0)/2));
///Movement and Collision
var h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var spd = sqrt(vx * vx + vy * vy);
if h == 0 && v == 0 {
    // deaccelerate when not moving
    if spd <= nd {
        vx = 0;
        vy = 0;
    } else {
        vx -= vx / spd * nd;
        vy -= vy / spd * nd;
    }
} else {
    if vx * h + vy * v < 0 {
        // skid
        if spd <= sd {
            vx = 0;
            vy = 0;
        } else {
            vx -= vx / spd * sd;
            vy -= vy / spd * sd;
        }
    } else {
        // accelerate
        vx += h * a;
        vy += v * a;
        spd = sqrt(vx * vx + vy * vy);
        if spd > mv {
            vx = vx / spd * mv;
            vy = vy / spd * mv;
        }
    }
}

// Change the below to have some collision in it
x += vx;
y += vy;

//Facing Code
if(keyboard_check(ord("S"))){
	image_index = 0;
}
if(keyboard_check(ord("W"))){
	image_index = 3;
}
if(keyboard_check(ord("D"))){
	image_index = 2;
}
if(keyboard_check(ord("A"))){
	image_index = 1;
}
//Interactable Collisions
if(place_meeting(x,y,INTER)){
	effect_create_below(ef_explosion,INTER.x,INTER.y,1.2,c_green);
	instance_deactivate_object(INTER);
	
	//Adding "INTER" to inventory.
	ds_list_add(inv, "1x Screwdriver");
}


//Can unlock vent?
if (distance_to_object(VENT) < 25) {
	if (ds_list_find_value(inv, 0)) {
		ventUnlocked = true;
	}
} else {
	ventUnlocked = false;
}


//COLLISIONS
move_bounce_solid(false);//I know right?

//DANGER CODE
if(place_meeting(x,y,ENEMY)){
	ENEMY.dead = 1;
	instance_destroy(self);
}
//VENT SLOW
if (place_meeting(x,y,VENT)){
	vx*=0.9;
	vy*=0.9;
}