if(state!=STATE.FREE)
{
	switch(state)
	{
		case STATE.TALK:
		script_execute(iniboss,boss,word,id);
		break;
		case STATE.CHOOSE:
		script_execute(fightchoose,50,120,420,200,choosetar);
		break;
		case STATE.AVOID:
		script_execute(fightavoid,190,120,290,220,avoidtar);
		instance_create_depth(0,0,depth-1,kingstage);
		break;
	}
		state=STATE.FREE;
}
