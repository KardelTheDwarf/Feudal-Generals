switch (current_hover) {
    case 0:
        room_goto(room_worldmap);
        break;
    case 1:
        // Implemente a lógica de carregamento de jogo
        break;
    case 2:
        // Implemente a lógica de opções
        break;
    case 3:
        game_end(); // ou qualquer função para sair
        break;
}

// No evento Mouse Left Button de obj_main_menu:
audio_play_sound(snd_click, 1, false);  // Supondo que você tenha um som chamado snd_click
