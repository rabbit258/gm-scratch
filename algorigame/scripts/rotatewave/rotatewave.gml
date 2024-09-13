// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rotatewave(){
	var _x1=argument0;
	var _y1=argument1;
	var _width=argument2;
    var _langle=argument3;
	var _tangle=argument4;
	var _tar=sprite_index;
	with(instance_create_depth(_x1,_y1,depth-2,shackwaverotate))
	{
		x1=_x1;
		y1=_y1;
		image_angle=_langle;
		angle=_tangle;
		width=_width;
		sprite_index=_tar;
	}
}