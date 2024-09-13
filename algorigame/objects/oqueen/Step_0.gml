/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if(!oqueenshower.iskingshow)
{
	if(orabbit.keyactivate&&!isrun)
	{
		var _activatex=lengthdir_x(15,orabbit.direction);
		var _activatey=lengthdir_y(15,orabbit.direction);
		
		if(position_meeting(orabbit.x+_activatex,orabbit.y+_activatey,id))
		{
			isrun=true;
			var dir=round(orabbit.direction /90);
			var temp1=dir mod 2;
		
			var tarspeed=36;
			if(dir==1||dir==2)
			tarspeed=-tarspeed;
		
			if(temp1==1)
			yto=y+tarspeed;
			else
			xto=x+tarspeed;
		}
	
		if(position_meeting(xto,yto,oqueen))
		{
			xto=x;
			yto=y;
		}
	
		xto=clamp(xto,520,774);
		yto=clamp(yto,306,559);
	}



	if(x!=xto||y!=yto)
	{
		x+=(xto-x)/10;
		y+=(yto-y)/10;
		if(abs(xto-x)<1)
		x=xto;
		if(abs(yto-y)<1)
		y=yto;
	}
	else
	isrun=false;

	if(!isrun&&!collision_line(x-500,y,x+500,y,oqueen,false,true)
	&&!collision_line(x,y-500,x,y+500,oqueen,false,true)
	&&!collision_line(x-500,y-500,x+500,y+500,oqueen,false,true)
	&&!collision_line(x-500,y+500,x+500,y-500,oqueen,false,true))
		{
			oqueenshower.kingshow[index]=true;
			image_alpha=0.5;
		}
		else
		{
			oqueenshower.kingshow[index]=false;
			image_alpha=1;
		}

}
if(position_meeting(x,y-36,pentity))
{
	depth=pentity.depth-1;
}