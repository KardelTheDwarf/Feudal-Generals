// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_main_menu(){
// Cria uma variável global para armazenar o índice do botão selecionado
menu_index = 0;

function fun_start_game(){
room_goto(room_worldmap);	
}

function fun_wip(){
show_message("Work in Progress");
}



// Cria uma lista de botões com seus respectivos textos e ações
buttons = ds_list_create();
ds_list_add(buttons, ["New Game", fun_start_game]); // scr_start_game é um script que inicia o jogo
ds_list_add(buttons, ["Options", fun_wip]); // scr_show_options é um script que mostra as opções do jogo
ds_list_add(buttons, ["Credits", fun_wip]); // scr_show_credits é um script que mostra os créditos do jogo
ds_list_add(buttons, ["Exit", game_end]); // game_end é uma função built-in que encerra o jogo

}