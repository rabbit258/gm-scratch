
x1=RESOLUTION_W/2;
y1=RESOLUTION_H-80;
x2=RESOLUTION_W/2;
y2=RESOLUTION_H;

x1target=0;
x2target=RESOLUTION_W;

lerpProgress=0;


switch(kingmanager.stage)
{
	case 1:
	text="八皇后骑士看起来非常生气";
	break;
	case 2:
	text="你感受到一双充满愤怒但夹杂着一丝怜悯的\n眼睛正死死盯着你";
	break;
	case 3:
	text="你感觉自己好像不是第一次来到这";
	break;
	case 4:
	case 5:
	case 6:
	case 7: text="你发现自己无论如何都想不起更多了";
}
if(!instance_exists(orabbitmanager))
instance_create_depth(0,0,depth-1,orabbitmanager);
else
with(orabbitmanager)
{
	y1=210;
	y2=225;
}