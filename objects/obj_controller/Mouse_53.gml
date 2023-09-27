// Registra a posição inicial do mouse e ativa o modo de arrasto
if mouse_x > 0 && mouse_x < room_width && mouse_y > 0 && mouse_y < room_height && (room == room_worldmap){
dragging = true;
start_x = mouse_x + camera_get_view_x(view_camera[0]);
start_y = mouse_y + camera_get_view_y(view_camera[0]);
}

