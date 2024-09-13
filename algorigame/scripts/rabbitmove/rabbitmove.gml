// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rabbitmove(){
	var cdirection=round(direction /90);
	switch(cdirection)
	{
		case 0:
		sprite_index=rabbit_right;
		break;
		case 1:
		sprite_index=rabbit_back;
		break;
		case 2:
		sprite_index=rabbit_left;
		break;
		case 3:
		sprite_index=rabbit_forward;
		break;
	}
	
}