if(dead == 0){
	if(aggro == 1){
		if( x < PLAYER.x){
			x += enemymaxspeedx;
		}
		if( x > PLAYER.x){
			x-= enemymaxspeedx;
		}
		if( y < PLAYER.y){
			y+= enemymaxspeedy;
		}
		if( y > PLAYER.y){
			y-= enemymaxspeedy;
		}
	}
	if(collision_circle(x,y,aggrorange,PLAYER,false,true)){
		aggro = 1;
	}
	move_bounce_solid(false);
}