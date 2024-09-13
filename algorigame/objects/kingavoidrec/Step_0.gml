/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event

event_inherited();
if(instance_exists(rabbit))
{
	rabbit.x=clamp(rabbit.x,x1+TEXTWIDTH+4,x2-TEXTWIDTH-4);
rabbit.y=clamp(rabbit.y,y1+TEXTWIDTH+4,y2-TEXTWIDTH-4);

}