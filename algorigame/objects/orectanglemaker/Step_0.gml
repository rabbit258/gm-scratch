
lerpProgress+=(1-lerpProgress)/50;
if(lerpProgress>0.4&&!instance_exists(fightchooser))
{
	instance_create_depth(0,0,depth,fightchooser);
}

x1=lerp(x1,x1target,lerpProgress);
x2=lerp(x2,x2target,lerpProgress);