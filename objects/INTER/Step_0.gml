if(image_xscale < 1.0 && needstogodown == 0){
	image_xscale+=0.01;
	image_yscale+=0.01;
}
if(image_xscale >= 1.0){
	needstogodown = 1;
}
if(needstogodown == 1){
	image_xscale-=0.01;
	image_yscale-=0.01;
}
if (image_xscale <= 0.5){
	needstogodown = 0;
}