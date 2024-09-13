if(image_index>=6)
{
	if(image_index==6)
	{
		audio_play_sound(clawhit,10,false);
		GUIshake(15,10);
	}

		if(!orabbitfight.blink&&position_meeting(orabbitfight.x,orabbitfight.y,id))
		{
		orabbitmanager.hl-=1;
		orabbitfight.blink=40;
		audio_play_sound(hit, 8, false);
		}
	
}
if(image_index==0||image_index==2||image_index==4)
audio_play_sound(warning,20,false);