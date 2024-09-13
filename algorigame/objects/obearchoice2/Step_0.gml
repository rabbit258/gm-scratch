if(!timeline_running)
{
	c1=c_white;
c2=c_white;
c3=c_white;
c4=c_white;

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
selected=clamp(selected,1,4);
if(selected==1)
{
	c1=c_yellow;
}
else if(selected==2)
{
	c2=c_yellow;
}
else if(selected==3)
{
	
	c3=c_yellow;
}
else if(selected==4)
{
	c4=c_yellow;
}

if(orabbit.keyactivate)
{
	audio_play_sound(selectsound,10,false);
	obearchooserec.num-=selected;
	if(obearchooserec.num<=4&&obearchooserec.num!=0)
	{
		timeline_index=lose1;
		timeline_position=0;
		timeline_running=true;
	}
	else if(obearchooserec.num!=0)
	{
		timeline_index=bearpick;
		timeline_position=0;
		timeline_running=true;
	}
	else
	{
		switch(bearmanager.stage)
		{
		case 1:
		timeline_index=stage1;
		timeline_position=0;
		timeline_running=true;
		bearmanager.stage++;
		break;
		case 2:
		timeline_index=stage2;
		timeline_position=0;
		timeline_running=true;
		bearmanager.stage++;
		}
	}
}
}