//inside map
if room == room_map {
	
//draw background	
var ground = current_map.sprite_index;
var ground_image = current_map.image_index;
var ground_speed = current_map.image_speed;

if ground_speed = 0{
draw_sprite_tiled(ground,ground_image,0,0);	
} else{
draw_sprite_tiled(ground,-1,0,0);	
image_speed = ground_speed;
}

// Interface
var panel_xpos = 10;
var panel_ypos = 10;
var panel_width = 150;  // Ajuste conforme necessário
var panel_height = spacing * array_length_1d(resources) + 20;

//Font Config
draw_set_font(fnt_small);
draw_set_halign(fa_left);

// Desenhar o painel de recursos
draw_set_color(c_black)
draw_rectangle(panel_xpos, panel_ypos, panel_xpos + panel_width, panel_ypos + panel_height, false);
draw_set_color(c_white)
draw_rectangle(panel_xpos, panel_ypos, panel_xpos + panel_width, panel_ypos + panel_height, true);

// Desenhar os ícones e contadores dinamicamente
for (var i = 0; i < array_length_1d(resources); i++) {
    draw_sprite(resource_sprites[i], 0, panel_xpos + 20, panel_ypos + 20 + i * spacing);
    draw_text(panel_xpos + 60, panel_ypos + 40 + i * spacing, string(resource_counts[i]));
}


}



