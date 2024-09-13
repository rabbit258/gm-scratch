if(textProgress<string_length(word))
textProgress+=0.07;
if(string_length(word)>textinterval&&textProgress>textinterval+0.9)
{
	textProgress=0;
	word=string_copy(word,textinterval+1,string_length(word)-textinterval);
}
