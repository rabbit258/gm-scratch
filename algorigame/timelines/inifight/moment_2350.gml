instance_create_depth(0,0,depth-1,obearchooserec);
instance_create_depth(0,0,depth-1,obearchoice);
instance_destroy(obearavoid);
instance_destroy(dialog);
audio_play_sound(bgm2,2,true);
obearchooserec.num=10;
obearchooserec.text="现在的胡萝卜总数为"+string_format(obearchooserec.num,2,0);