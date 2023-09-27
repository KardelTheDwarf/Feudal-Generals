// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/*
function scr_map_generator(){
// Verifica se não há nenhum obj_worldmap_place na room
if (instance_number(obj_village) == 0) {
    // Define o tamanho da grade e a distância mínima
    var grid_size = 32;
    var min_distance = 128;

    // Cria 165 objetos no mapa
    for (var i = 0; i < 120; i++) {
        // Escolhe uma posição aleatória na grade
        var grid_x = irandom(room_width / grid_size - 1);
        var grid_y = irandom(room_height / grid_size - 1);

        var random_x = grid_x * grid_size;
        var random_y = grid_y * grid_size;

        // Verifica se a posição não está ocupada por outro obj_worldmap_place e se está a pelo menos 128 pixels de distância de qualquer outro
        var too_close = false;
        var nearby_objects = instance_nearest(random_x, random_y, obj_village);
        if (nearby_objects != noone) {
            var distance = point_distance(random_x, random_y, nearby_objects.x, nearby_objects.y);
            if (distance < min_distance) {
                too_close = true;
            }
        }

        while (instance_position(random_x, random_y, obj_village) != noone || too_close) {
            grid_x = irandom(room_width / grid_size - 1);
            grid_y = irandom(room_height / grid_size - 1);

            random_x = grid_x * grid_size;
            random_y = grid_y * grid_size;

            too_close = false;
            nearby_objects = instance_nearest(random_x, random_y, obj_village);
            if (nearby_objects != noone) {
                var distance = point_distance(random_x, random_y, nearby_objects.x, nearby_objects.y);
                if (distance < min_distance) {
                    too_close = true;
                }
            }
        }

        var new_place = instance_create_layer(random_x, random_y, "Instances", obj_village);
		//set terrain
var grid_x = floor(new_place.x / 64);
var grid_y = floor(new_place.y / 64);

if (grid_x >= 0 && grid_x < grid_width && grid_y >= 0 && grid_y < grid_height) {
    new_place.terrain_type = world_grid[# grid_x, grid_y];
} else {
    // Fora dos limites do grid, defina um valor padrão ou lide com isso como preferir
    new_place.terrain_type = "unknown";
}

		ds_list_add(obj_controller.all_villages, new_place);

        
        // Se for o primeiro obj_worldmap_place, define a variável owner como "Player"
        if (i == 0) {
            new_place.owner = "Player";
            
          // Ajusta a câmera para focar no obj_worldmap_place do jogador
var cam = view_camera[0];
var cam_width = camera_get_view_width(cam);
var cam_height = camera_get_view_height(cam);

// Centralize a câmera em new_place
camera_set_view_pos(cam, new_place.x - cam_width / 4, new_place.y - cam_height / 4);


        }
    }
}


}