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

//draw interface
if instance_exists(current_map){
	scr_interface(10,10,150);
}
}




//menu
if room = room_menu{
	
	// Cria uma variável para armazenar a altura dos botões
var button_height = 64;

// Cria uma variável para armazenar a largura dos botões
var button_width = 256;

// Cria uma variável para armazenar a distância entre os botões
var button_spacing = 16;

// Cria uma variável para armazenar a cor dos botões
var button_color = c_dkgray;

// Cria uma variável para armazenar a cor do botão selecionado
var button_selected_color = c_white;

// Cria uma variável para armazenar a fonte dos botões
var button_font = fnt_button; // fnt_menu é uma fonte criada no editor de recursos
	
// Desenha o fundo do menu com uma imagem
image_speed = 0.05;
draw_sprite_tiled(spr_Water, -1, 0, 0); // spr_menu_bg é um sprite criado no editor de recursos

// Desenha o título do jogo com uma fonte e uma cor
draw_set_font(fnt_title); // fnt_title é uma fonte criada no editor de recursos
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text_ext_transformed(room_width / 2, 85, "Feudal Generals",75, 300, 1,1, image_angle);
draw_set_color(c_white);
draw_text_ext_transformed(room_width / 2, 85, "Feudal Generals",75, 300, 0.98,0.98, image_angle);

// Desenha os botões do menu com um loop
draw_set_font(button_font);
for (var i = 0; i < ds_list_size(buttons); i++) {
    // Calcula a posição x e y do botão
    x = (room_width - button_width) / 2;
    y = (room_height - (button_height + button_spacing) * ds_list_size(buttons)) / 2 + i * (button_height + button_spacing);
    
    // Verifica se o botão está selecionado
    if (i == menu_index) {
        // Desenha o botão com a cor selecionada
        draw_set_color(button_selected_color);
    } else {
        // Desenha o botão com a cor normal
        draw_set_color(button_color);
    }
    
    // Desenha o retângulo do botão
    draw_rectangle(x, y, x + button_width, y + button_height, false);
    
    // Desenha o texto do botão
	draw_set_valign(fa_middle);
	draw_set_color(c_black)
    draw_text(x + button_width / 2, y + button_height / 2, ds_list_find_value(buttons, i)[0]);
}	
}
