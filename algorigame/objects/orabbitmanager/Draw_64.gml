draw_set_color(c_white);
draw_set_font(managerfont);

draw_text(165+global.shakex,y1+global.shakey,"rabbit ");
draw_text(220+global.shakex,y1+global.shakey,string_format(hl,2,0));
draw_text(240+global.shakex,y1+global.shakey,"/");
draw_text(255+global.shakex,y1+global.shakey,string_format(healthfull,2,0));
draw_healthbar(275+global.shakex,y1+global.shakey,315+global.shakex,y2+global.shakey,100*hl/healthfull,c_red,c_yellow,c_yellow,0,true,false);