keyleft=keyboard_check(vk_left);
keyright=keyboard_check(vk_right);
keydown=keyboard_check(vk_down);
keyup=keyboard_check(vk_up);

inputdirection=point_direction(0,0,keyright-keyleft,keydown-keyup);
inputmagnitude=(keyright-keyleft!=0)||(keydown-keyup!=0);
hSpeed=lengthdir_x(inputmagnitude*speedwalk,inputdirection);
vSpeed=lengthdir_y(inputmagnitude*speedwalk,inputdirection);

x+=hSpeed;
y+=vSpeed;

if(blink)
{
	blink--;
}