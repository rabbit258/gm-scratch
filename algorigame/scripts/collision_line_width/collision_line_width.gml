// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function collision_line_width(){
	var _x1=argument[0];
	var _y1=argument[1];
	var _x2=argument[2];
	var _y2=argument[3];
	var _w=argument[4];
	var _obj=argument[5];
if( !instance_exists(obj_sensor))
instance_create_depth(0,0,depth,obj_sensor);


obj_sensor.x=_x1;
obj_sensor.y=_y1;
obj_sensor.image_angle = point_direction(_x1,_y1,_x2,_y2);
obj_sensor.image_xscale = point_distance(_x1,_y1,_x2,_y2);
obj_sensor.image_yscale =_w / sprite_get_height(obj_sensor.sprite_index);

with(_obj)
return place_meeting(x,y,obj_sensor);

}