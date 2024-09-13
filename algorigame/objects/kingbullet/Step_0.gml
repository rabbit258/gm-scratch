progress=min(progress,1)
if(progress<1)
{
	progress+=(1-progress)/50;
	progress+=0.01;
	x=lerp(x1,x2,progress);
	y=lerp(y1,y2,progress);
}
else if(alarm[0]>timewait)
{
	alarm[0]=timewait;
	alarm[1]=timewait/2;
}