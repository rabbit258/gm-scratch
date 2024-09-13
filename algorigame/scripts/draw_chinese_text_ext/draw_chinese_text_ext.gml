// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_chinese_text_ext(){
var xx = argument[0];
var yy = argument[1];
var str = argument[2];
var sep = argument[3];
var w = argument[4];
var l = noone;
if (argument_count > 5) l = argument[5] else l = true;

var x0 = xx;
var y0 = yy;

while!(str == ""){
   var s = "";
   var i = 0;
   var ww = 0;
   var con = "";
   do{
       i++;
       s = string_copy(str, 1, i);
       ww = string_width(s)
       con = string_copy(s, i, 1);
   }until(ww >= w) or (i >= string_length(str)) or (con == "#");
   if (con!="#"){
       if (l) and (ww > w){
           var char = string_char_at(s, string_length(s));
           var t = char == "）" or char == "，" or char == "。" or char == "！" or char == "？";
           if !(t){
               i--;
               s = string_copy(str, 1, i);
           }
       }
       draw_text(x0, y0, s);
       y0 += sep;
       str = string_delete(str, 1, i);
   } else {
       s = string_copy(str, 1, i-1);
       draw_text(x0, y0, s);
       y0+=sep;
       str = string_delete(str, 1, i);
   }
}
	return noone; 
}