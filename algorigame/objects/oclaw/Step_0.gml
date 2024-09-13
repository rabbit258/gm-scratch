tardirection=point_direction(x,y,orabbitfight.x,orabbitfight.y)
var dd = angle_difference(tardirection, curdirection);
curdirection += min(abs(dd), 10) * sign(dd)*progress;
progress-=0.03;
progress=max(0,progress)
image_angle=curdirection;
x+=	lengthdir_x(fspeed,curdirection);
y+=lengthdir_y(fspeed,curdirection);






if(!orabbitfight.blink&&position_meeting(orabbitfight.x,orabbitfight.y,id))
{
	orabbitmanager.hl-=1;
	orabbitfight.blink=40;
	audio_play_sound(hit, 8, false);
}
