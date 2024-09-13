if(!timeline_running)
{
		if(!choice)
	{
		c1=c_white;
		c2=c_white;
		c3=c_white;
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
		selected=clamp(selected,1,3);
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

		if(orabbit.keyactivate)
		{
			choice=selected;
				audio_play_sound(selectsound,10,false);
		 
		}
	}
	else 
	{
		if(keyboard_check_pressed(vk_up))
		{
			tarnum+=1;
		}
		if(keyboard_check_pressed(vk_down))
		{
			tarnum-=1;
		}
		temp=1
		switch(choice)
		{
			case 1:temp=obearchooserec.num;break;
			case 2:temp=obearchooserec.num2;break;
			case 3:temp=min(obearchooserec.num,obearchooserec.num2);break;
		}
		tarnum=clamp(tarnum,1,temp);
		if(orabbit.keyactivate)
		{
			audio_play_sound(selectsound,10,false);
			switch(choice)
			{
				case 1:obearchooserec.num-=tarnum;break;
				case 2:obearchooserec.num2-=tarnum;break;
				case 3:
				obearchooserec.num-=tarnum;
				obearchooserec.num2-=tarnum;
				break;
			}
			if(obearchooserec.num==0&&obearchooserec.num2==0)
			{
				timeline_index=stage3;
				timeline_position=0;
				timeline_running=true;
			}
			else if(obearchooserec.num==0||obearchooserec.num2==0||obearchooserec.num==obearchooserec.num2)
			{
				//玩家失败
				timeline_index=lose2;
				timeline_position=0;
				timeline_running=true;
			}
			else
			{
				timeline_index=bearpick2;
				timeline_position=0;
				timeline_running=true;
			}
		}
	}
}