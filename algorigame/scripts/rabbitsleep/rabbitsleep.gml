// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rabbitsleep(){
	if(!audio_is_playing(bell))
	{

		image_speed=IMAGESPEED;
		if(image_index==4)
		{
			audio_play_sound(bgm1,1,true);
			orabbit.shadow.image_alpha=58;
			state=rabbitfree;
			sprite_index=rabbit_right;
		}
	}
	else 
	{
		orabbit.shadow.image_alpha=0;
		count-=0.5;
		count=max(0,count);
		layer_background_alpha(layer_background_get_id("dark"),count*0.005);
	}
}