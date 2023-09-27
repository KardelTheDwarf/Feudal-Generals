/// scr_resource_regeneration(village)
/// @param village

function scr_resource_regeneration(village) {
	
	with(village){
    // Constantes de base para regeneração
    var BASE_BERRY_REGEN = 1; // Você pode ajustar esse valor conforme necessário
    var BASE_WOOD_REGEN = 1; // Você pode ajustar esse valor conforme necessário
    var BASE_ANIMAL_REGEN = 1; // Você pode ajustar esse valor conforme necessário
    var BASE_FISH_REGEN = 1; // Você pode ajustar esse valor conforme necessário

    // Regeneração com base na fertilidade do terreno
    natural_resource_berries += BASE_BERRY_REGEN * terrain_fertility;
    natural_resource_wood += BASE_WOOD_REGEN * terrain_fertility;

    // Regeneração com base na temperatura
    var optimal_temp = 24;
    var temp_factor = 1 - abs(temperature - optimal_temp) / optimal_temp;

    natural_resource_animals += BASE_ANIMAL_REGEN * temp_factor;
    natural_resource_fish += BASE_FISH_REGEN * temp_factor;

    // Garantir que os recursos não excedam um valor máximo (por exemplo, 100), se necessário
    natural_resource_berries = min(natural_resource_berries, 10000);
    natural_resource_wood = min(natural_resource_wood, 1000);
    natural_resource_animals = min(natural_resource_animals, 10000);
    natural_resource_fish = min(natural_resource_fish, 10000);
}
}
