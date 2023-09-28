//default terrain father
image_speed = 0;
image_index = irandom(image_number-1);
click_count = 0;

// Cria um dicionário para armazenar os recursos
resources = ds_map_create();

// Adiciona recursos ao dicionário
ds_map_add(resources, "Wood", ds_map_create());
ds_map_add(resources, "Stone", ds_map_create());
ds_map_add(resources, "Iron", ds_map_create());
ds_map_add(resources, "Coal", ds_map_create());
ds_map_add(resources, "Steel", ds_map_create());

// Define a contagem para cada recurso
ds_map_find_value(resources, "Wood")[? "count"] = 0;
ds_map_find_value(resources, "Stone")[? "count"] = 0;
ds_map_find_value(resources, "Iron")[? "count"] = 0;
ds_map_find_value(resources, "Coal")[? "count"] = 0;
ds_map_find_value(resources, "Steel")[? "count"] = 0;

//Define a contagem maxima para cada recurso
ds_map_find_value(resources, "Wood")[? "count_max"] = 100; // Ajuste conforme necessário
ds_map_find_value(resources, "Stone")[? "count_max"] = 100; // Ajuste conforme necessário
ds_map_find_value(resources, "Iron")[? "count_max"] = 100; // Ajuste conforme necessário
ds_map_find_value(resources, "Coal")[? "count_max"] = 100; // Ajuste conforme necessário
ds_map_find_value(resources, "Steel")[? "count_max"] = 0; // Steel é definido como 0 em todos os biomas

// Define o sprite para cada recurso
ds_map_find_value(resources, "Wood")[? "sprite"] = spr_wood;
ds_map_find_value(resources, "Stone")[? "sprite"] = spr_stone;
ds_map_find_value(resources, "Iron")[? "sprite"] = spr_iron;
ds_map_find_value(resources, "Coal")[? "sprite"] = spr_coal;
ds_map_find_value(resources, "Steel")[? "sprite"] = spr_steel;

//generate map resources
if sprite_index == spr_Water{
    // No recurso no mar
}

if sprite_index == spr_Mud{
    // Recursos na praia: madeira e pedra
    ds_map_find_value(resources, "Wood")[? "count"] = irandom_range(10,20);
    ds_map_find_value(resources, "Stone")[? "count"] = irandom_range(5,10);
}

if sprite_index == spr_Sand{
    // Recursos no deserto: pedra e ferro
    ds_map_find_value(resources, "Stone")[? "count"] = irandom_range(10,20);
    ds_map_find_value(resources, "Iron")[? "count"] = irandom_range(5,10);
}

if sprite_index == spr_Grass{
    // Recursos na floresta: madeira e carvão
    ds_map_find_value(resources, "Wood")[? "count"] = irandom_range(20,30);
    ds_map_find_value(resources, "Coal")[? "count"] = irandom_range(10,20);
}

if sprite_index == spr_Snow{
    // Recursos na neve: ferro
    ds_map_find_value(resources, "Iron")[? "count"] = irandom_range(10,20);
}

//Persistance
persistent = true;
