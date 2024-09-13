if(!timeline_running)
{
	c1=c_white;
c2=c_white;

if(keyboard_check_pressed(vk_right))
{
	selected+=1;
	audio_play_sound(selectsound,10,false);
}
if(keyboard_check_pressed(vk_left))
{
	selected-=1;
	audio_play_sound(selectsound,10,false);
}
selected=clamp(selected,1,2);
if(selected==1)
{
	
	c1=c_yellow;
}
else if(selected==2)
{
	c2=c_yellow;
}

if(orabbit.keyactivate)
{
		audio_play_sound(selectsound,10,false);
	if(selected==2)
	{
		timeline_index=bearpick;
		timeline_position=0;
		timeline_running=true;
	}
	if(selected==1)
	{
		instance_create_depth(0,0,depth,obearchoice2);
		instance_destroy();
	}
}
}