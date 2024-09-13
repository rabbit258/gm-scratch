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
		obearchooserec.text="请根据目前的萝卜数量选择要拿取的数量\n每次至少拿一根，最多拿四根，谁拿到最后\n一根就算胜利"
	}
	if(selected==1)
	{
		instance_create_depth(0,0,depth,obearchoice1);
		instance_destroy();
	}
}