if(state!=STATE.FREE)
{
	switch(state)
	{
		case STATE.TALK:
		script_execute(iniboss,boss,word,id);
		break;
		case STATE.CHOOSE:
		script_execute(fightchoose,50,120,420,220,choosetar);
		break;
		case STATE.AVOID:
		script_execute(fightavoid,180,130,300,250,avoidtar);
		break;
	}
		state=STATE.FREE;
}
