if(textProgress<string_length(word))
textProgress+=0.05;
else if(oking.sprite_index!=skingdefeat&&textProgress==string_length(word))
{
	fightmanager.state=STATE.CHOOSE;
	if(!audio_is_playing(bgm3))
	audio_play_sound(bgm3,3,true);
	instance_destroy();
}



if(textProgress>=textinterval)
{
	textProgress=0;
	word=string_copy(word,textinterval+1,string_length(word)-textinterval);
}
