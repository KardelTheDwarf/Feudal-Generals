// Função auxiliar para obter nome e sobrenome com base na cultura e gênero
function get_culture_name_and_surname(culture, gender) {
    var name_list, surname_list;

    switch(culture) {
        case "Forest":
            name_list = (gender == "Male" ? obj_controller.forest_male_names : obj_controller.forest_female_names);
            surname_list = obj_controller.forest_surnames;
            break;
        case "Mountain":
            name_list = (gender == "Male" ? obj_controller.mountain_male_names : obj_controller.mountain_female_names);
            surname_list = obj_controller.mountain_surnames;
            break;
        case "Plain":
            name_list = (gender == "Male" ? obj_controller.plain_male_names : obj_controller.plain_female_names);
            surname_list = obj_controller.plain_surnames;
            break;
        case "Coastal":
            name_list = (gender == "Male" ? obj_controller.coastal_male_names : obj_controller.coastal_female_names);
            surname_list = obj_controller.coastal_surnames;
            break;
    }

    var random_name = ds_list_find_value(name_list, irandom(ds_list_size(name_list) - 1));
    var random_surname = ds_list_find_value(surname_list, irandom(ds_list_size(surname_list) - 1));

    return [random_name, random_surname];
}
