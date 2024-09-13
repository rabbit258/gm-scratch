if(progress<1)
{
	progress+=(1-progress)/2*(sprite_width/8);
	progress+=0.01;
	progress=min(progress,1);
	widthnow=progress*width;
	x2=x1+lengthdir_x(1000,image_angle);
	y2=y1+lengthdir_y(1000,image_angle);
}
else if(angle!=0)
{
	//hSpeed=lengthdir_x(inputmagnitude*speedwalk,inputdirection);
	//vSpeed=lengthdir_y(inputmagnitude*speedwalk,inputdirection);
	var temp=sign(angle)*min(0.5,abs(angle))
	image_angle+=temp;
	x2=x1+lengthdir_x(1000,image_angle);
	y2=y1+lengthdir_y(1000,image_angle);
	angle-=temp;
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
else if(angle==0&&progress<=2)
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
