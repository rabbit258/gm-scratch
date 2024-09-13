global.gamepaused=false;
global.icamera=instance_create_layer(0,0,layer,ocamera);
global.targetdirection=0;
global.targetx=-1;
global.targety=-1;
global.targetroom=-1;
global.wake=false;
global.transport=0;
global.shakelength=0;
global.shakemagnitude=0;
global.shakeremain=0;
global.shakex=0;
global.shakey=0;

randomize();

surface_resize(application_surface,RESOLUTION_W,RESOLUTION_H);

room_goto(rqueen);