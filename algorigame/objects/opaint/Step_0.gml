event_inherited();

if(orabbit.keyactivate)
{
	if(showpaint)
	showpaint=false;
	else
	{
		var _activatex=lengthdir_x(15,orabbit.direction);
		var _activatey=lengthdir_y(15,orabbit.direction);
		
		if(position_meeting(orabbit.x+_activatex,orabbit.y+_activatey,id))
		{
			showpaint=true;
		}
	}
}