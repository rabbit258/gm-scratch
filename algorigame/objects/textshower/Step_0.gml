lerpProgress+=(1-lerpProgress)/100;

x1=lerp(x1,x1target,lerpProgress);
x2=lerp(x2,x2target,lerpProgress);

textProgress+=1;

keydown=keyboard_check_pressed(vk_down);
keyup=keyboard_check_pressed(vk_up);
responseselected+=(keydown-keyup);
var _max =array_length_1d(response)-1;
var _min =0;
if(responseselected>_max) responseselected=_min;
else if(responseselected<_min)responseselected=_max;

if(orabbit.keyactivate)
{
	var _messagelength=string_length(tarstr);
	if(textProgress>=_messagelength)
	{	
		if(instance_exists(textshowerquene))
		{
			with(textshowerquene)ticket--;
		}
		else
		{
			instance_destroy();
			with (orabbit) state=laststate;
		}
	}
	//else
	//{
	//	if(textProgress>2)
	//	{
	//		textProgress=_messagelength;	
	//	}
	//}
}