// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function bulletcreator(){
	var _x=argument0;
	var _y=argument1;
	var _a=argument2;
	with(instance_create_depth(0,0,depth-2,kingbullet))
	{
		x2=_x;
		y2=_y;
		action=_a;
	}
}