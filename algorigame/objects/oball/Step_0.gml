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
if(words!="")
{
	with(instance_create_depth(290,80,fightmanager.depth,odialog))
	{
		word=oball.words;
	}
	words="";
}