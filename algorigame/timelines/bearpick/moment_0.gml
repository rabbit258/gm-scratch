var temp=obearchooserec.num mod 5;
if(temp==0)
temp=floor(random(3)+1);
obearchooserec.num-=temp;

with(instance_create_depth(290,80,depth-1,dialog))
{
	word="那我就拿走"+string_format(temp,2,0)+"根胡萝卜了";
}
obearchooserec.text="现在的胡萝卜总数为"+string_format(obearchooserec.num,2,0);