if(!timeline_running)
{
	draw_set_font(managerfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(c1);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_black);
draw_rectangle(x1+TEXTWIDTH, y1+TEXTWIDTH, x2-TEXTWIDTH, y2-TEXTWIDTH, false);
draw_set_color(c_white);
draw_text((x1+x2)/2,y1+2,"1");
if(selected==1)
draw_sprite(srabbitfight,0,x1+10,(y1+y2)/2+1);

draw_set_color(c2);
draw_rectangle(x3, y1, x4, y2, false);
draw_set_color(c_black);
draw_rectangle(x3+TEXTWIDTH, y1+TEXTWIDTH, x4-TEXTWIDTH, y2-TEXTWIDTH, false);
draw_set_color(c_white);
draw_text((x3+x4)/2,y1+2,"2");
if(selected==2)
draw_sprite(srabbitfight,0,x3+10,(y1+y2)/2+1);

draw_set_color(c3);
draw_rectangle(x5, y1, x6, y2, false);
draw_set_color(c_black);
draw_rectangle(x5+TEXTWIDTH, y1+TEXTWIDTH, x6-TEXTWIDTH, y2-TEXTWIDTH, false);
draw_set_color(c_white);
draw_text((x5+x6)/2,y1+3,"3");
if(selected==3)
draw_sprite(srabbitfight,0,x5+10,(y1+y2)/2+1);


draw_set_color(c4);
draw_rectangle(x7, y1, x8, y2, false);
draw_set_color(c_black);
draw_rectangle(x7+TEXTWIDTH, y1+TEXTWIDTH, x8-TEXTWIDTH, y2-TEXTWIDTH, false);
draw_set_color(c_white);
draw_text((x7+x8)/2,y1+3,"4");
if(selected==4)
draw_sprite(srabbitfight,0,x7+10,(y1+y2)/2+1);

}