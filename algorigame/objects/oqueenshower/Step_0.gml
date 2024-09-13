var index=0;
iskingshow=true;
repeat(8)
{
	if(!kingshow[index++])
	iskingshow=false;
}
if(iskingshow&&position_meeting(orabbit.x,orabbit.y,id)&&!instance_exists(okingshape))
{
	instance_create_layer(656,204,"Instances",okingshape);
	iskingshow=false;
	
}
//&&position_meeting(orabbit.x,orabbit.y,id)