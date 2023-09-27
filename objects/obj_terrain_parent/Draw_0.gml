draw_self();

if mouse_check_button(mb_right){
draw_set_color(c_black);
//if sprite_index = spr_Snow then draw_set_color(c_black);
draw_rectangle(x,y,x+sprite_width-1,y+sprite_height-1,1);
}