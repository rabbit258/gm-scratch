// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rabbitfree(){
	
	image_speed=IMAGESPEED;
	hSpeed=lengthdir_x(inputmagnitude*speedwalk,inputdirection);
	vSpeed=lengthdir_y(inputmagnitude*speedwalk,inputdirection);

	rabbitcollision();

	x+=hSpeed;
	y+=vSpeed;

	if(inputmagnitude!=0)
	{
		rabbitmove();
		direction=inputdirection;
		image_speed=IMAGESPEED;
	}
	else
	{
		speed=0;
		image_index=0;
	}
	
	if(keyactivate)
	{
		var _activatex=lengthdir_x(30,direction);
		var _activatey=lengthdir_y(30,direction);
		
		activate=instance_position(x+_activatex,y+_activatey,pentity);
		
		if(activate!=noone&&activate.entityactivatescript!=-1)
		{
			if(activate.entitysound!=-1)
			audio_play_sound(activate.entitysound,10,false);
			scriptexecutearray(activate.entityactivatescript,activate.entityactivateargs);
		}
	}
}