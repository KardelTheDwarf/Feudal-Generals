// Propriedades básicas do vilarejo
owner = "AI";
color = c_white;
click_count = 0;
tech_level = 0;

// Alimentos disponíveis no vilarejo
food_fruits = 5;
food_meat = 0;
food_grains = 0;
food_fish = 0;

// Materiais disponíveis no vilarejo
resource_wood = 0;
resource_stone = 0;
resource_iron = 0;
resource_fish = 0;

//housing
village_available_housing = 0;
village_building_slots = irandom_range(100,1000);

// Recursos naturais no vilarejo (quantidades iniciais aleatórias)
natural_resource_wood = irandom_range(100, 500);
natural_resource_stone = irandom_range(50, 300);
natural_resource_iron = irandom_range(10, 150);
natural_resource_berries = irandom_range(100, 400);
natural_resource_fish = irandom_range(50, 250);
natural_resource_animals = irandom_range(30, 200);

// Define a cultura
culture = choose("Forest", "Mountain", "Plain", "Coastal");

// Criação de humanos para o vilarejo
humans = ds_map_create();

// Gera nome e sobrenome para o homem
var male_name_surname = get_culture_name_and_surname(culture, "Male");
var add_human_male = create_human(id, culture, "Male", 18, male_name_surname[0], male_name_surname[1], 0);

obj_controller.human_id++;  // Incrementa o contador
var male_key = "Human_" + string(obj_controller.human_id);  // Cria uma chave única
ds_map_add(humans, male_key, add_human_male);
show_debug_message("Adding Human_0 to village.humans");

// Gera apenas nome para a mulher (sobrenome é o mesmo do homem para simular uma família)
var female_name = get_culture_name_and_surname(culture, "Female")[0];
var add_human_female = create_human(id, culture, "Female", 18, female_name, male_name_surname[1], 0);

obj_controller.human_id++;  // Incrementa o contador
var female_key = "Human_" + string(obj_controller.human_id);  // Cria uma chave única
ds_map_add(humans, female_key, add_human_female);
show_debug_message("Adding Human_1 to village.humans");




// Configuração inicial da temperatura com base na localização do vilarejo
var distance_to_center = abs(y - room_height/2);
temperature_base = lerp(45, -60, distance_to_center / (room_height/2));

// Atualiza a temperatura e a fertilidade do terreno
scr_tempearature_fertility_update(id);

// Adiciona o vilarejo à lista global de vilarejos
ds_list_add(obj_controller.all_villages, id);


// Inicialmente, definimos terrain como vazio
terrain_type = noone;

// Lista de layers de tileset que você sabe que existem na room
var tileset_layers = ["Grass", "Sand", "Mud", "Water", "Snow", "Rocky"];

// Vamos verificar cada layer na lista
for (var i = 0; i < array_length_1d(tileset_layers); i++) {
    var layer_name = tileset_layers[i];
    var tilemap_id = layer_tilemap_get_id(layer_name);
    
    // Se tilemap_id é -1, significa que a layer não existe ou não é uma layer de tileset. Ignoramos neste caso.
    if (tilemap_id == -1) continue;
    
    // Verificamos se há um tile nesta posição
    if (tilemap_get_at_pixel(tilemap_id, x, y) != -1) {

        terrain_type = layer_name;
		terrain_type_variation = irandom(1);
        break;  // Se encontrarmos uma layer com um tile, saímos do loop
    }
		
}




