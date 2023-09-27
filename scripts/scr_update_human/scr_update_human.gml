function update_human(human, parent_object) {
	
	var citizen = parent_object.humans[? human];
	var village = parent_object;
	
	with(citizen){
	
    // 1. Definindo as variáveis locais
    var age = citizen[? "age"];
    var gender = citizen[? "gender"];
    var culture = citizen[? "culture"];
    var strength = citizen[? "strength"];
    var agility = citizen[? "agility"];
    var intelligence = citizen[? "intelligence"];
    var pregnant = citizen[? "pregnant"];
    var lifespan = citizen[? "lifespan"];
    var job = citizen[? "job"];
    var housing = citizen[? "housing"];
    var nutrition = citizen[? "nutrition"];
    var tools = citizen[? "tools"];
    var surname = citizen[? "surname"];
    var labor_efficiency = citizen[? "labor_efficiency"];
    var labor_bonus = (tools > 0) ? labor_efficiency * 1.5 : labor_efficiency;

    // 2. Atualização de características básicas
    age += 1;
    if (age <= 18) {
        var increment = (gender == "Male") ? 1/18 : 0.5 * (1/18);
        strength += increment;
        agility += (gender == "Male") ? increment : 0.65 * increment;
    } else if (age > 60) {
        strength = max(0.01, strength - 0.01);
        agility = max(0.01, agility - 0.01);
    }
    intelligence += 0.01;

    // 3. Verificar se o humano atingiu seu lifespan e morrer
    if (age >= lifespan) {
        ds_list_delete(citizen, ds_list_find_index(citizen, human));
        return; 
    }

    // 4. Consumo de comida
    var consumption = 0.40;
    var consumed = false;
    var foods = ["food_fruits", "food_meat", "food_grains"];
    for (var i = 0; i < array_length_1d(foods) && !consumed; i++) {
        var current_food = variable_instance_get(village, foods[i]);
        if (current_food >= consumption) {
            variable_instance_set(village, foods[i], current_food - consumption);
            consumed = true;
        }
    }
    if (!consumed) {
        nutrition -= consumption;
        for (var i = 0; i < array_length_1d(foods); i++) {
            var current_food = variable_instance_get(village, foods[i]);
            if (current_food < 0) variable_instance_set(village, foods[i], 0);
        }
    }

    // 5. Reprodução
    if (gender == "Female") {
        if (pregnant != -1) {
            pregnant -= 0.05;
            if (pregnant == 0) {
                var name = (choose("Male", "Female") == "Male") 
                          ? get_culture_name_and_surname(culture, "Male")
                          : [get_culture_name_and_surname(culture, "Female")[0], surname];
                var new_human = create_human(id, culture, name[1], 0, name[0], surname, 0);
				obj_controller.human_id++;  // Incrementa o contador
				var male_key = "Human_" + string(obj_controller.human_id);  // Cria uma chave única
                ds_map_add(humans, male_key,new_human);
                pregnant = -1;
            }
        } else if (pregnant == 0) {
            var pregnancy_chance = (housing == 1) ? 0.15 : 0.05;
            if (random(1) <= pregnancy_chance) pregnant = 1;
        }
    }

    // 6. Moradia
    if (housing < 1 && village.village_available_housing > 0) {
        housing += 0.5;
        village.village_available_housing -= 0.5;
    }

    // 7. Trabalho e eficiência
    if (job != "Unemployed") tools = max(0, tools - 0.02);
    switch (job) {
        case "Gatherer":
            var amount = 0.50 * labor_bonus;
            if (village.natural_resource_berries >= amount) {
                village.food_fruits += amount;
                village.natural_resource_berries -= amount;
            }
            break;
        case "Fisher":
            var amount = 0.80 * labor_bonus;
            if (village.natural_resource_fish >= amount) {
                village.food_fish += amount;
                village.natural_resource_fish -= amount;
            }
            break;
        case "Farmer":
            var fertility_bonus = village.terrain_fertility;
            village.food_grains += (1 * labor_bonus + fertility_bonus);
            break;
        case "Hunter":
            var amount = 0.80 * labor_bonus;
            if (village.natural_resource_animals >= amount) {
                village.food_meat += amount;
                village.natural_resource_animals -= amount;
            }
            break;
    }

    // 8. Atualizando valores no DS MAP
    citizen[? "age"] = age;
    citizen[? "strength"] = strength;
    citizen[? "agility"] = agility;
    citizen[? "intelligence"] = intelligence;
    citizen[? "pregnant"] = pregnant;
    citizen[? "nutrition"] = nutrition;
    citizen[? "tools"] = tools;
}

}