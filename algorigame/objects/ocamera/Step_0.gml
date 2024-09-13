
if(instance_exists(follow))
{
	xto=follow.x;
	yto=follow.y;
}
x+=(xto-x)/15;
y+=(yto-y)/15;

x=clamp(x,viewwidthhalf,room_width-viewwidthhalf);
y=clamp(y,viewheighthalf,room_height-viewheighthalf);

camera_set_view_pos(cam,x-viewwidthhalf,y-viewheighthalf);

x+=random_range(-shakeremain,shakeremain);
y+=random_range(-shakeremain,shakeremain);

shakeremain=max(0,shakeremain-(1/shakelength)*shakemagnitude);
