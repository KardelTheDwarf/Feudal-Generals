function create_human(parent_object, culture, gender, age, name, surname, genetic_bonus) {
    var human = ds_map_create();

    // Informações Básicas e Identificáveis
    human[? "name"] = name;
    human[? "surname"] = surname;
    human[? "gender"] = gender;
    human[? "age"] = age;
    human[? "culture"] = culture;
    human[? "parent_object"] = parent_object;

    // Atributos Físicos e Mentais
    human[? "strength"] = 0.0;
    human[? "intelligence"] = 0.0;
    human[? "agility"] = 0.0;

    // Status de Saúde e Vida
    human[? "health"] = 1.0;
    human[? "nutrition"] = 1.0;
    human[? "lifespan"] = irandom_range(70, 100);
    human[? "pregnant"] = 0;
	
	//Set the Genetic Strenght
	human[? "genetic_strenght"] = min(3, 0.01 + genetic_bonus);

    // Ocupação e Trabalho
    human[? "occupation"] = "None";
    human[? "job"] = "Unemployed";
    human[? "tools"] = 0;
	human[? "labor_efficiency"] = 0.5 * human[? "strength"] + 0.5 * human[? "agility"];
    human[? "housing"] = 0;

    // Equipamento e Bônus de Combate
    human[? "weapon_type"] = "Nothing";
    human[? "weapon_material"] = "Nothing";
    human[? "armor_type"] = "Nothing";
    human[? "armor_material"] = "Nothing";
    human[? "shield_type"] = "Nothing";
    human[? "shield_material"] = "Nothing";
    human[? "mount_type"] = "None";
    
    human[? "weapon_bonus"] = 0.0;
    human[? "armor_defense"] = 0.0;  // This now represents % reduction from incoming damage.
    human[? "shield_block_chance"] = 0.0;  // Represents % chance to block an incoming attack.

    human[? "military_experience"] = 0.0;
    human[? "leader_bonus"] = 0.0;  // Bonus provided by a leader to a battalion.
    human[? "general_bonus"] = 0.0;  // Bonus provided by a general to an army.

    return human;
}
