//zoom camera settings
if (room == room_worldmap) {


    // Ajusta o tamanho da view de acordo com o zoom
    var cam = view_camera[0];
    camera_set_view_size(cam, 320 * zoom_factor, 240 * zoom_factor);



//zoom in
if mouse_wheel_up(){
    zoom_factor = max(zoom_factor - zoom_speed, min_zoom);	
}

//zoom out
if mouse_wheel_down(){
    zoom_factor = min(zoom_factor + zoom_speed, max_zoom);	
}
} 

//Main menu
if room = room_menu{

// Cria uma variável para armazenar o som de navegação dos botões
var button_sound = snd_click; // snd_menu é um som criado no editor de recursos

// Verifica se o usuário pressionou a tecla para cima ou para baixo
if (keyboard_check_pressed(vk_up)) {
    // Decrementa o índice do menu e toca o som de navegação
    menu_index--;
    audio_play_sound(button_sound, 10, false);
} else if (keyboard_check_pressed(vk_down)) {
    // Incrementa o índice do menu e toca o som de navegação
    menu_index++;
    audio_play_sound(button_sound, 10, false);
}

// Verifica se o índice do menu está fora dos limites da lista de botões
if (menu_index < 0) {
    // Ajusta o índice para o último elemento da lista
    menu_index = ds_list_size(buttons) - 1;
} else if (menu_index >= ds_list_size(buttons)) {
    // Ajusta o índice para o primeiro elemento da lista
    menu_index = 0;
}

// Verifica se o usuário pressionou a tecla Enter ou Espaço
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
    // Executa a ação do botão selecionado
    var action = ds_list_find_value(buttons, menu_index)[1];
    action();
}	
}