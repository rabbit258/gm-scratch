// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wavecreator(){
	var _x1=argument0;
	var _y1=argument1;
	var _x2=argument2;
	var _y2=argument3;
	var _width=argument4;
	with(instance_create_depth(0,0,depth-2,shackwave))
	{
		x1=_x1;
		y1=_y1;
		x2=_x2;
		y2=_y2;
		width=_width;
	}
}