// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function lazercreator(){
	var _x=argument0;
	var _y=argument1;
	var _a1=argument2;
	var _a2=argument3;
	var _tar=argument4;
	if(is_undefined(_tar))
	_tar=slazer;
	with(instance_create_depth(0,0,depth-2,kinglazer))
	{
		sprite_index=_tar;
		x2=_x;
		y2=_y;
		angle1=_a1;
		angle2=_a2;
	}
}