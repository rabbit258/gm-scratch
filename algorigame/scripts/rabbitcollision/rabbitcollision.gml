function rabbitcollision(){
	var _collision=false;
	
	if(tilemap_get_at_pixel(collisionmap,x+hSpeed,y))
	{
		hSpeed=0;
		_collision=true;
	}


	if(tilemap_get_at_pixel(collisionmap,x,y+vSpeed))
	{
		vSpeed=0;
		_collision=true;
	}

	
	activate=instance_position(x+hSpeed,y+vSpeed,pentity);
	if(activate!=noone&&activate.entitycollision)
	{
		hSpeed=0;
		vSpeed=0;
		_collision=true;
	}
	
	return _collision;
}