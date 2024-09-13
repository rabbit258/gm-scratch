function newtextbox(){
		var tempstr;
		for(var i=0;i<argument_count;i++)
		{
			var _obj;
			if(instance_exists(textshower)) _obj=textshowerquene;else _obj=textshower;
			with(instance_create_layer(0,0,"Instances",_obj))
			{
			tempstr=argument[i];
			var _markerposition=string_pos("&",tempstr);
			if(_markerposition==0)
			{
				tarstr=tempstr;
				response=[-1];
				responsescript=[-1];
			}
			else
			{
		
				tarstr=string_copy(tempstr,1,_markerposition-1);
				tempstr=string_delete(tempstr,1,_markerposition);
				for(var index=0;string_pos("&",tempstr)!=0;index++)
				{
					_markerposition=string_pos("&",tempstr);
					var tp=string_pos(":",tempstr);
					responsescript[index]=real(string_copy(tempstr,1,tp-1));
					response[index]=string_copy(tempstr,tp+1,_markerposition-1-tp);
					tempstr=string_delete(tempstr,1,_markerposition);
				}
			}
			}
		
		
		if(instance_exists(other))
		origininstance=other.id;
		else
		origininstance=noone;
		}
	
	with(orabbit)
	{
		if(state!=rabbitfrozen)
		{
			laststate=state;
			state=rabbitfrozen;
		}
	}
	
}