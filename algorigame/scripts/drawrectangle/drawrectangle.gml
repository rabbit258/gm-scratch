
function drawrectangle(){
	var x1=argument0;
	var y1=argument1;
	var x2=argument2;
	var y2=argument3;
	draw_set_color(c_white);
	draw_rectangle(x1, y1, x2, y2, false);
	draw_set_color(c_black);
	draw_rectangle(x1+TEXTWIDTH, y1+TEXTWIDTH, x2-TEXTWIDTH, y2-TEXTWIDTH, false);

}