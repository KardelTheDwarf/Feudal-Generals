// Desenhar título

var title_text = "Feudal Generals";
var x_pos = room_width / 2;
var y_pos = menu_y - 100;

draw_set_font(title_font);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Desenhar contorno branco
draw_set_color(c_white);
for (var xx = -2; xx <= 2; xx++) {
    for (var yy = -2; yy <= 2; yy++) {
        if (xx != 0 || yy != 0) {  // Evita desenhar o texto central nesta etapa
            draw_text(x_pos + xx, y_pos + yy, title_text);
        }
    }
}

// Desenhar texto principal
draw_set_color(title_color);
draw_text(x_pos, y_pos, title_text);




// Desenhar botões
draw_set_font(button_font);
for (var i = 0; i < ds_list_size(buttons); i++) {
    var b_x = room_width / 2;
    var b_y = menu_y + i * (button_height + button_spacing);
    
    if (mouse_x > b_x - button_width / 2 && mouse_x < b_x + button_width / 2 && mouse_y > b_y - button_height / 2 && mouse_y < b_y + button_height / 2) {
        draw_set_color(button_hover_color);
        if (current_scale[| i] < hover_scale) {
            current_scale[| i] += 0.05;  // Ajuste este valor conforme necessário para controlar a velocidade da animação
        }
    } else {
        draw_set_color(button_normal_color);
        if (current_scale[| i] > 1) {
            current_scale[| i] -= 0.05;  // Ajuste este valor conforme necessário
        }
    }
    
    var scale = current_scale[| i];
    draw_rectangle(b_x - (button_width * scale) / 2, b_y - (button_height * scale) / 2, b_x + (button_width * scale) / 2, b_y + (button_height * scale) / 2, false);
    
    draw_set_color(button_text_color);
    draw_text(b_x , b_y, buttons[| i]);
}


