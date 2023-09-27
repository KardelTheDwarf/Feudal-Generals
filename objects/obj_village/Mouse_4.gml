// No evento de clique do objeto vilarejo no mapa do mundo:

if (mouse_check_button_pressed(mb_left)) {
    click_count += 1;
    if (click_count == 2) {   
        obj_controller.current_map = id;
        room_goto(room_map);
        
        // Set terrain background on controller object
        switch (terrain_type) {
            case "Grass":
                obj_controller.terrain_background[0] = spr_Grass;
                break;
            
            case "Snow":
                obj_controller.terrain_background[0] = spr_Snow;
                break;
            
            case "Sand":
                obj_controller.terrain_background[0] = spr_Sand;
                break;
            
            case "Mud":
                obj_controller.terrain_background[0] = spr_Mud;
                break;
            
            case "Rocky":
                obj_controller.terrain_background[0] = spr_Rocky;
                break;
            
            case "Water":
                obj_controller.terrain_background[0] = spr_Water;
                break;
        }

        obj_controller.terrain_background[1] = terrain_type_variation;
        
        // Reset the click count
        click_count = 0;
    }
}
