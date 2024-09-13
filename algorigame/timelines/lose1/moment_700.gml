instance_destroy(); 
instance_create_depth(0,0,depth,obearchooserec);
instance_create_depth(0,0,depth,obearchoice1);
switch(bearmanager.stage)
{
	case 1:
	obearchooserec.num=10;
	break;
	case 2:
	obearchooserec.num=14;
	break;
}

obearchooserec.text="现在的胡萝卜总数为"+string_format(obearchooserec.num,2,0);
instance_destroy(obearavoid);
instance_destroy();
obear.sprite_index=bearnormal;