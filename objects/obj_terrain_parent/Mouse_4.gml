//double click zoom in
if (mouse_check_button_pressed(mb_left)) && (room == room_worldmap) {
    click_count += 1;
    if (click_count == 2) {   
			obj_controller.current_map = id;
		    room_goto(room_map);
	}

//click time to reset
alarm[0] = 15;
}