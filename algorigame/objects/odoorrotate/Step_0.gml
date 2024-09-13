/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(oqueenshower)&&oqueenshower.iskingshow&&image_index==0)
{
	orabbit.state=rabbitfrozen;
	ocamera.follow=id;
	image_speed=IMAGESPEED;
	audio_play_sound(doorrotate,80,false);
}
if(triggle)
{
	orabbit.state=rabbitfrozen;
	count+=1;
	layer_background_alpha(layer_background_get_id("dark"),count*0.005);
	count=min(200,count);
	if(count==195)
		audio_play_sound(gameend,10,false);
}

	
