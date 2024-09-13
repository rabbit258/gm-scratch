if(!instance_exists(otransition))
instance_create_depth(0,0,depth,otransition);

if(instance_exists(orabbit)&&(position_meeting(orabbit.x,orabbit.y,id))&&global.transport==0)
{
	global.targetroom=targetroom;
	global.targetx=targetx;
	global.targety=targety;
	global.targetdirection=orabbit.sprite_index;
	global.transport=1;
}