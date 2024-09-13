draw_set_color(c_white);
draw_rectangle(x1+global.shakex, y1+global.shakey, x2+global.shakex, y2+global.shakey, false);
draw_set_color(c_black);
draw_rectangle(x1+TEXTWIDTH+global.shakex, y1+TEXTWIDTH+global.shakey, x2-TEXTWIDTH+global.shakex, y2-TEXTWIDTH+global.shakey, false);