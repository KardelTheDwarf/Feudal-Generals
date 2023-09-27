// Incrementar o dia
day += 1;

// Se o dia exceder 30, incrementar o mês e resetar o dia
if (day > 30) {
    day = 1;
    month += 1;
    
    // Atualização da estação com base no mês
    switch(month) {
        case 1:
        case 2:
        case 3:
            obj_controller.season = "Spring";
            break;
        case 4:
        case 5:
        case 6:
            obj_controller.season = "Summer";
            break;
        case 7:
        case 8:
        case 9:
            obj_controller.season = "Autumn";
            break;
        case 10:
        case 11:
        case 12:
            obj_controller.season = "Winter";
            break;
    }
}

// Se o mês exceder 12, incrementar o ano e resetar o mês
if (month > 12) {
    month = 1;
    year += 1;
}

//Vento
wind_speed = random(0.2);



// Atualizar vilarejos
if ds_list_size(all_villages) > 0 {
    for (var i = 0; i < ds_list_size(all_villages); i++) {
        var village = ds_list_find_value(all_villages, i);
        
        // Verificar se o vilarejo ainda existe (não foi destruído ou removido)
        if (instance_exists(village)) {
            // Atualizar temperatura e fertilidade
            scr_tempearature_fertility_update(village);
            
            // Regeneração de recursos
            scr_resource_regeneration(village);

            // Se existem humanos no vilarejo, atualizá-los
            if !ds_map_empty(village.humans) {
                for (var j = 0; j < ds_map_size(village.humans); j++) {
                    var key = "Human_" + string(j);
                    update_human(key, village);
                } 
            }
        }
    }
}


// Reiniciar o alarme para o próximo dia
alarm[0] = game_pace * room_speed;
