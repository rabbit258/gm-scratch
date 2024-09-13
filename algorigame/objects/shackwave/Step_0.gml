if(progress<1)
{
	progress+=(1-progress)/2;
	progress+=0.01;
	progress=min(progress,1);
	widthnow=progress*width;
}
else if(waittime--)
{
	if(offset==0)
	{
		val=1;
	}
	if(offset==4)
	{
	val=-1;
	}
	offset+=val;
}
else if(progress<=2)
{
	progress+=(2-progress)/20;
	progress+=0.01;
	widthnow=width*(2-progress);
}
else
instance_destroy();

if(instance_exists(orabbitfight)&&!orabbitfight.blink&&widthnow>2&&collision_line_width(x1,y1,x2,y2,widthnow,orabbitfight))
{
	//命中玩家
	orabbitmanager.hl-=1;
	orabbitfight.blink=40;
	audio_play_sound(hit, 10, false);
}
if(offset==0)
{
	val=1;
}
if(offset==4)
{
	val=-1;
}
offset+=val;