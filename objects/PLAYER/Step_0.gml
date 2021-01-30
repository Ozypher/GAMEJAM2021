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
	image_index = 1;
}
if(keyboard_check(vk_up)){
	image_index = 2;
}
if(keyboard_check(vk_right)){
	image_index = 0;
	image_xscale = 1;
}
if(keyboard_check(vk_left)){
	image_index = 0;
	image_xscale =-1;
}