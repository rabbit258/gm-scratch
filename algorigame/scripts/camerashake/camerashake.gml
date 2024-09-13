// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function camerashake(){
	with(ocamera)
	{
		if(argument0>shakeremain)
		{
			shakemagnitude=argument0;
			shakeremain=shakemagnitude;
			shakelength=argument1;
		}
	}
}