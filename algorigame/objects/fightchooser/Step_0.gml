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
	if(selected==1)
	{
		instance_create_depth(240,70,depth-6,oattack);
	}
	else 
	kingchoicerec.text="你尝试开口说话，但是到嘴边的话被内心\n的某些不属于自己的东西控制住了";
}
if(fightmanager.boss.readytoattack)
{
	fightmanager.state=STATE.AVOID;
	fightmanager.boss.readytoattack=false;
	instance_destroy(orectanglemaker);
	instance_destroy();
}