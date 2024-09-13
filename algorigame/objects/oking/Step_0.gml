if(sprite_index==skingdefeat)
{
	alpha-=0.003;
	image_alpha=alpha;
}
else
{
	if(hp!=hpt)
{
	showhealth=true;

	progress+=0.01;
	progress=min(progress,1);
	hp=lerp(hp,hpt,progress);
}
else if(progress>0)
{
	progress=0;
	showhealth=false;
	readytoattack=true;
}
if(instance_exists(oattack)&&sprite_index!=skingbeinghit)
{
	sprite_index=skingbeinghit;
}
else if(!instance_exists(oattack)&&sprite_index==skingbeinghit)
{
	sprite_index=skingnormal;
}
else if(!instance_exists(kingstage)&&sprite_index==skingattack)
{
	sprite_index=skingnormal;
}
if(kingmanager.state==STATE.AVOID&&sprite_index!=skingattack)
sprite_index=skingattack;
}

if(words!="")
{
	with(instance_create_depth(290,80,depth,odialog))
	{
		word=oking.words;
	}
	words="";
}


