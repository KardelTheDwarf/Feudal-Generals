// Lista de botões
buttons = ds_list_create();
ds_list_add(buttons, "New Game", "Load Game", "Options", "Exit");

//random seed
randomize();

// Configurações de aparência
button_width = 200;
button_height = 50;
button_spacing = 10;
menu_y = (room_height - (ds_list_size(buttons) * button_height + (ds_list_size(buttons) - 1) * button_spacing)) / 2;


// Estado atual (para saber qual botão está sendo selecionado)
current_hover = -1;

// Configurações de aparência
button_normal_color = c_dkgray;
button_hover_color = c_ltgray;
button_text_color = c_white;
title_color = c_black;
title_font = fnt_title;  // Supondo que você tenha uma fonte chamada fnt_title para o título
button_font = fnt_button;  // Supondo que você tenha uma fonte chamada fnt_button para os botões




hover_scale = 1.2;  // Quanto o botão deve escalar quando o mouse passa sobre ele

// Criando a lista current_scale
current_scale = ds_list_create();

var button_count = ds_list_size(buttons);
for (var i = 0; i < button_count; i++) {
    ds_list_add(current_scale, 1);
}





