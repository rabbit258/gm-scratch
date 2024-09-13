state=rabbitfree;
if(global.wake==false)
{
	state=rabbitsleep;
	sprite_index=rabbit_an;
	audio_play_sound(bell,10,false);
	global.wake=true;
}
laststate=state;

collisionmap=layer_tilemap_get_id(layer_get_id("layer_col"));


image_speed=0;
hSpeed=0;
vSpeed=0;
speedwalk=1.5;
textspeed=7.5;

rf=rabbit_forward;
rb=rabbit_back;
rl=rabbit_left;
rr=rabbit_right;

if(global.targetx!=-1)
{
	x=global.targetx;
	y=global.targety;
	sprite_index=global.targetdirection;
	
}

shadow=instance_create_depth(x,y,depth+1,oshadow);
count=200;
