//double click exit map
if (mouse_check_button_pressed(mb_right)) && room = room_map {
    click_count += 1;
    if (click_count == 2) {   
			obj_controller.current_map = noone;
		    room_goto(room_worldmap);
	}

//click time to reset
alarm[1] = 15;
}