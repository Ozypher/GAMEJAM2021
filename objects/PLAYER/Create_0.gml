///Initialize variables
vx = 0; // horizontal velocity
vy = 0; // vertical velocity
mv = 6; // maximal velocity
a = 0.2; // acceleration
nd = 0.2; // normal deacceleration
sd = 0.3; // skid deacceleration
image_speed = 0;

//Create inventory ds list.
globalvar inv;
inv = ds_list_create();