if (dragging) && (room == room_worldmap){

	window_set_cursor(cr_size_all);
	
    // Calcula o deslocamento
    var dx = start_x - (mouse_x + camera_get_view_x(view_camera[0]));
    var dy = start_y - (mouse_y + camera_get_view_y(view_camera[0]));

    // Ajusta a posição da câmera
    var cam_x = camera_get_view_x(view_camera[0]);
    var cam_y = camera_get_view_y(view_camera[0]);
    camera_set_view_pos(view_camera[0], cam_x + dx, cam_y + dy);

    // Atualiza a posição inicial para o próximo frame
    start_x = mouse_x + camera_get_view_x(view_camera[0]);
    start_y = mouse_y + camera_get_view_y(view_camera[0]);
}

