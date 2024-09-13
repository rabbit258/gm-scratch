	
	draw_set_color(c_white);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_color(c_black);
	draw_rectangle(x1+TEXTWIDTH, y1+TEXTWIDTH, x2-TEXTWIDTH, y2-TEXTWIDTH, false);
if(lerpProgress>0.4)
{
	draw_set_font(gamefont);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text(x1target+20,y1+5,text);
}