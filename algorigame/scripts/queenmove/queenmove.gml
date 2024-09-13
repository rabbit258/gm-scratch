// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function queenmove(){
	var queen=argument0;
	if(instance_exists(orabbit))
	{
		var dir=round(orabbit.direction /90);
		var temp1=dir mod 2;
		
		var tarspeed=50;
		if(dir==1||dir==2)
		tarspeed=-50;
		
		if(temp1==1)
		queen.xto=queen.x+tarspeed;
		else
		queen.yto=quuen.y+tarspeed;
		
	}

}