draw_set_font(managerfont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(c1);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_black);
draw_rectangle(x1+TEXTWIDTH, y1+TEXTWIDTH, x2-TEXTWIDTH, y2-TEXTWIDTH, false);
draw_set_color(c_white);
draw_text((x1+x2)/2,y1+2,"F-hand");
if(selected==1)
draw_sprite(srabbitfight,0,x1+10,(y1+y2)/2+1);

draw_set_color(c2);
draw_rectangle(x3, y1, x4, y2, false);
draw_set_color(c_black);
draw_rectangle(x3+TEXTWIDTH, y1+TEXTWIDTH, x4-TEXTWIDTH, y2-TEXTWIDTH, false);
draw_set_color(c_white);
draw_text((x3+x4)/2,y1+3,"B-hand");
if(selected==2)
draw_sprite(srabbitfight,0,x3+10,(y1+y2)/2+1);