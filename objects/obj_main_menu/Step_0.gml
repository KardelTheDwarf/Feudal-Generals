


// Resetar o valor de current_hover
current_hover = -1;

// Verificar se o mouse está sobre algum dos botões
for (var i = 0; i < ds_list_size(buttons); i++) {
    var b_x = room_width / 2;
    var b_y = menu_y + i * (button_height + button_spacing);
    
    if (mouse_x > b_x - button_width / 2 && mouse_x < b_x + button_width / 2 && mouse_y > b_y - button_height / 2 && mouse_y < b_y + button_height / 2) {
        current_hover = i;
        break;  // Interrompe o loop assim que encontrar o botão sob o qual o mouse está pairando
    }
}
