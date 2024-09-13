if(action==0)
script_execute(crosswave,x,y,sprite_width);
else if(action==1)
script_execute(obliquecrosswave,x,y,sprite_width);
else if(action==2)
{
	script_execute(obliquecrosswave,x,y,sprite_width);
	script_execute(crosswave,x,y,sprite_width);
}

instance_destroy();