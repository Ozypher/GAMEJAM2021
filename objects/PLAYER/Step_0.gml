//CAMERA CONTROL
camera_set_view_pos(view_camera[0],(x-window_get_width()/2),(y-window_get_height()/2));
///Movement and Collision
var h = keyboard_check(vk_right) - keyboard_check(vk_left);
var v = keyboard_check(vk_down) - keyboard_check(vk_up);

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
if(keyboard_check(vk_down)){
	image_index = 0;
}
if(keyboard_check(vk_up)){
	image_index = 3;
}
if(keyboard_check(vk_right)){
	image_index = 2;
}
if(keyboard_check(vk_left)){
	image_index = 1;
}
//Interactable Collisions
if(place_meeting(x,y,INTER)){
	effect_create_below(ef_explosion,INTER.x,INTER.y,1.2,c_green);
	instance_deactivate_object(INTER);
}
//COLLISIONS
move_bounce_solid(false);//I know right?

