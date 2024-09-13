draw_self();
draw_set_font(dialogfont);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

var _str=string_copy(word,1,floor(textProgress));
draw_set_color(c_white);
draw_chinese_text_ext(x+60,y-60,_str,17,80);