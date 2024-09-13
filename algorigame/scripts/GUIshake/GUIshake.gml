// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GUIshake(){
			if(argument0>global.shakeremain)
		{
			global.shakemagnitude=argument0;
			global.shakeremain=global.shakemagnitude;
			global.shakelength=argument1;
		}
}