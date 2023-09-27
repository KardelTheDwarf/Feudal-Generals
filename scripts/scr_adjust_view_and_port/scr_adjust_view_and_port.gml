function adjust_view_and_port(){
    // Obtém a resolução da tela do jogador
    var screen_width = display_get_width();
    var screen_height = display_get_height();

    // Obtém a ID da câmera atual
    var cam = view_camera[0];

    // Ajusta a view para ter o mesmo tamanho da room
    camera_set_view_size(cam, room_width, room_height);

    // Calcula a proporção da tela do jogador
    var screen_ratio = screen_width / screen_height;
    var room_ratio = room_width / room_height;

    var port_width, port_height;

    // Ajusta o port de acordo com a proporção da tela do jogador
    if (room_ratio > screen_ratio) {
        // A room é mais larga do que a tela do jogador
        port_width = screen_width;
        port_height = screen_width / room_ratio;
    } else {
        // A room é mais alta ou igual à tela do jogador
        port_width = screen_height * room_ratio;
        port_height = screen_height;
    }

    // Define o tamanho do port
    display_set_gui_size(port_width, port_height);
}
