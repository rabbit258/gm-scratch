x1=RESOLUTION_W/2;
y1=RESOLUTION_H-90;
x2=RESOLUTION_W/2;
y2=RESOLUTION_H-40;

x1target=RESOLUTION_W/2-50;
x2target=RESOLUTION_W/2+50;

lerpProgress=0;
textProgress=0;

response=["start","quit"];
responseselected=0;
blink=false;
startcount=false;
count=0;

layer_background_alpha(layer_background_get_id("dark"),0);