if(sprite_index==bearattck&&image_index>=4)
loop=true;
if(sprite_index==bearnormal)
loop=false;

if(loop&&sprite_index!=bearattacking)
{
	sprite_index=bearattacking;
	curdirection=270;
}
if(sprite_index==bearattacking)
{
	tardirection = point_direction(eyex,eyey, orabbitfight.x, orabbitfight.y);
	var dd = angle_difference(tardirection, curdirection);
	curdirection += min(abs(dd), 0.2) * sign(dd);
	tarx=eyex+lengthdir_x(1000,curdirection);
	tary=eyey+lengthdir_y(1000,curdirection);
}
if(sprite_index==bearclawattack)
{
	if(image_index==3)
	{
		GUIshake(15,10);
		audio_play_sound(hitground,11,false);
	}
	if(image_index>=7)
	sprite_index=bearnormal;
}