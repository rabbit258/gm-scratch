var arr=[1,2,3,5,4,7,6,10]
var mi=min(obearchooserec.num,obearchooserec.num2);
var pick1=0;
var pick2=0;
if(mi=8)
{
		pick1=7;
		pick2=7;
}
else
{
	var index=0;
	for(;index<8;index++)
	{
		if(arr[index]==mi)
		break;
	}
	if(index mod 2)
	{
		pick1=arr[index-1];
		pick2=arr[index];
		
		while(pick2-pick1>abs(obearchooserec.num-obearchooserec.num2))
		{
			index-=2;
			pick1=arr[index-1];
			pick2=arr[index];

		}
	}
	else
	{
		pick1=arr[index];
		pick2=arr[index+1];
		
		while(pick2-pick1>abs(obearchooserec.num-obearchooserec.num2))
		{
			index-=2;
			pick1=arr[index];
			pick2=arr[index+1];

		}
	}
	
	
	if(pick1==min(obearchooserec.num,obearchooserec.num2)&&pick2==max(obearchooserec.num,obearchooserec.num2))
	{
		pick1=1;
		pick2=1;
	}
	else
	{
		if(obearchooserec.num-pick1!=0&&obearchooserec.num2-pick2!=0&&obearchooserec.num-pick1!=obearchooserec.num2-pick2)
		{
			var temp=pick1;
			pick1=pick2;
			pick2=temp;
		}
		pick1=obearchooserec.num-pick1;
		pick2=obearchooserec.num2-pick2;
	}
	
	
}
obearchooserec.num-=pick1;
obearchooserec.num2-=pick2;

with(instance_create_depth(290,80,depth-1,dialog))
{
	word="那我就在第一堆拿走"+string_format(pick1,2,0)+"根胡萝卜"+"第二堆拿走"+string_format(pick2,2,0)+"根胡萝卜";
}

obearchooserec.text="现在第一堆的萝卜数为"+string_format(obearchooserec.num,2,0)
					+"\n第二堆的萝卜数为"+string_format(obearchooserec.num2,2,0);