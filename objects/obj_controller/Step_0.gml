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



//insinde map
if (room == room_map) {
with(current_map){
obj_controller.resource_counts = [wood_count,stone_count,iron_count];
}
}