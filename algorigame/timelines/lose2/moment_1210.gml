
instance_create_depth(0,0,depth,obearchooserec);
instance_create_depth(0,0,depth,oc22);

obearchooserec.num=8;
obearchooserec.num2=10;
obearchooserec.text="现在第一堆的萝卜数为"+string_format(obearchooserec.num,2,0)
					+"\n第二堆的萝卜数为"+string_format(obearchooserec.num2,2,0);
					
					
instance_destroy(obearavoid);
instance_destroy(); 