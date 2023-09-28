// Script de interface
function scr_interface(PANEL_XPOS,PANEL_YPOS,PANEL_WIDTH){
    // Interface
    // Variáveis locais 
    var icon_xpos = PANEL_XPOS + 20; 
    var icon_ypos = PANEL_YPOS + 20; 
    var text_xpos = PANEL_XPOS + 60; 
    var text_ypos = PANEL_YPOS + 40;
	var RESOURCE_NUMBER = ds_map_size(current_map.resources);
	var PANEL_HEIGHT = 60 * RESOURCE_NUMBER;

    // Configuração da fonte 
    draw_set_font(fnt_small); 
    draw_set_halign(fa_left);
    // Desenhar o painel de recursos 
    draw_set_color(c_black); 
	draw_set_alpha(.4);
    draw_roundrect_ext(PANEL_XPOS, PANEL_YPOS, PANEL_XPOS + PANEL_WIDTH, PANEL_YPOS + PANEL_HEIGHT, 10, 10, false);
	draw_set_alpha(1);
    draw_set_color(c_white); 
    draw_roundrect_ext(PANEL_XPOS, PANEL_YPOS, PANEL_XPOS + PANEL_WIDTH, PANEL_YPOS + PANEL_HEIGHT, 10, 10, true);
	
	// Desenhar os ícones e contadores dinamicamente 
	var resource_key = ds_map_find_first(current_map.resources);
	for (var i = 0; i < RESOURCE_NUMBER; i++) {
		var resource_data = current_map.resources[? resource_key];
		var RESOURCE_SPRITE = resource_data[? "sprite"];
		var RESOURCE_COUNT = resource_data[? "count"];
		draw_sprite_ext(RESOURCE_SPRITE, 0, icon_xpos, icon_ypos + i * PANEL_HEIGHT / RESOURCE_NUMBER, 1, 1, image_angle * i, c_white,1); 
		draw_text_color(text_xpos,text_ypos + i * PANEL_HEIGHT / RESOURCE_NUMBER,string(RESOURCE_COUNT), c_white,c_white,c_white,c_white,1);
		resource_key = ds_map_find_next(current_map.resources, resource_key);
	}
}
