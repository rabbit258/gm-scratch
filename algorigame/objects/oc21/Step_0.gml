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
		obearchooserec.text="每次可以从某一堆取至少1根萝卜，或者从两\n堆取相同的萝卜数，谁拿到最后一根就算胜利"
	}
	if(selected==1)
	{
		instance_create_depth(0,0,depth,oc22);
		instance_destroy();
	}
}