

draw_set_font(managerfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

drawrectangle(x1,y1,x2,y2);

draw_set_color(c_white);

var _print ="";
	for(var i=0;i<array_length_1d(response);i++)
	{
		if(i==responseselected&&!blink) _print+="> ";
		_print+=response[i];
		if(i==responseselected&&!blink) _print+=" <";
				_print+="\n";
	}



draw_text((x1+x2)/2,y1+8,_print);