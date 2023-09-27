// Para mais informações sobre as mudanças no script assets para v2.3.0, consulte:
// https://help.yoyogames.com/hc/en-us/articles/360005277377

function scr_tempearature_fertility_update(village) {
    with (village) {
        // Ajustar a temperatura com base na estação
        switch (obj_controller.season) {
            case "Spring":
                temperature = temperature_base;
                break;
            case "Summer":
                temperature = (temperature_base * 2);  // Aumenta a temperatura em 200%
                break;
            case "Autumn":
                temperature = -(temperature_base * 1.5);  // Diminui a temperatura em 150%
                break;
            case "Winter":
                temperature = -(temperature_base * 2);  // Diminui a temperatura em 200%
                break;
        }

        // Calcular a fertilidade do terreno com base na temperatura
        terrain_fertility = lerp(0.1, 2, (temperature + 60) / 105);
    }
}
