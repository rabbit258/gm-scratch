lerpProgress+=(1-lerpProgress)/50;

x1=lerp(x1,x1target,lerpProgress);
x2=lerp(x2,x2target,lerpProgress);

textProgress+=1;
keydown=keyboard_check_pressed(vk_down);
keyup=keyboard_check_pressed(vk_up);
keyactivate=keyboard_check_pressed(vk_space);
if(keyup||keydown)
	audio_play_sound(selectsound,10,false);
responseselected+=(keydown-keyup);
var _max =array_length_1d(response)-1;
var _min =0;
if(responseselected>_max) responseselected=_min;
else if(responseselected<_min)responseselected=_max;

if(startcount)
{
	count++;
	if((count mod 10)==0)
	blink=!blink;
	layer_background_alpha(layer_background_get_id("dark"),count*0.005);
	if(count>200)
	{
		room_goto(rstart);
		instance_destroy();
	}
}

if(keyactivate&&!startcount)
{
	audio_play_sound(selectsound,10,false);
	if(responseselected==1)
	{
		instance_destroy(all);
		game_end();
	}
	else
	{
		startcount=true;
	}
}