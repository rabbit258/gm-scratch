keyleft=keyboard_check(vk_left);
keyright=keyboard_check(vk_right);
keydown=keyboard_check(vk_down);
keyup=keyboard_check(vk_up);
keyactivate=keyboard_check_pressed(vk_space);

inputdirection=point_direction(0,0,keyright-keyleft,keydown-keyup);
inputmagnitude=(keyright-keyleft!=0)||(keydown-keyup!=0);

script_execute(state);


shadow.x=x;
shadow.y=y;
