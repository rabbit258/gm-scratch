// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fightavoid(){
	var xt1=argument0;
	var yt1=argument1;
	var xt2=argument2;
	var yt2=argument3;
	var tar=argument4;			
	with(instance_create_depth(0,0,depth-1,tar))
	{
		x1target=xt1;
		y1=yt1;
		x2target=xt2;
		y2=yt2;
	}
	
}