if(orabbit.keyactivate&&!hastriggle)
{
	var _activatex=lengthdir_x(15,orabbit.direction);
	var _activatey=lengthdir_y(15,orabbit.direction);
		
	if(position_meeting(orabbit.x+_activatex,orabbit.y+_activatey,id))
	{
		hastriggle=true;
		timeline_index=inifight;
		timeline_position=0;
		timeline_running=true;
		
	}
}
if(instance_exists(orabbit))
{
	if(orabbit.y>=y)
	depth=orabbit.depth+2;
	else
	depth=orabbit.depth-1;
}