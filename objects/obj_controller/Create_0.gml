// --- Configuração do ritmo do jogo ---
game_pace = 2;  // segundos para ser um dia no jogo
click_count = 0;


// --- Configurações da câmera ---
dragging = false;
start_x = 0;      
start_y = 0;       

//Vento
wind_speed = random(0.1);

//Terrain Background
terrain_background = [noone, noone];

//Humam ID Manager
human_id = 0;

// --- Definição da estação inicial ---
season = choose("Spring", "Summer", "Autumn", "Winter");

// --- Lista de vilarejos ---
all_villages = ds_list_create();
current_map = noone;

//Recursos UI
resources = ["wood","stone","iron"];
resource_sprites = [spr_wood,spr_stone,spr_iron];
resource_counts = [];
spacing = 50;  // Espaçamento entre os ícones no painel




// --- Configurações das culturas ---

// Cultura da Floresta
forest_male_names = ds_list_create();
forest_female_names = ds_list_create();
forest_surnames = ds_list_create();
ds_list_add(forest_male_names, "Arlan", "Thorne", "Leaf", "Rowan", "Briar", "Elwood", "Sylvan", "Forrest", "Barkley", "Oakley");
ds_list_add(forest_female_names, "Fern", "Ivy", "Willow", "Hazel", "Blossom", "Briar", "Alder", "Laurel", "Tansy", "Cedar");
ds_list_add(forest_surnames, "Greenleaf", "Woodsong", "Rootwalker", "Mossheart", "Treeshade", "Pinebrook", "Leafwhisper", "Thornbranch", "Birchbark", "Fernglen");

// Cultura da Montanha
mountain_male_names = ds_list_create();
mountain_female_names = ds_list_create();
mountain_surnames = ds_list_create();
ds_list_add(mountain_male_names, "Craig", "Stone", "Cliff", "Ridge", "Garnet", "Flint", "Boulder", "Crispin", "Vale", "Peak");
ds_list_add(mountain_female_names, "Sierra", "Terra", "Gneiss", "Gemma", "Onyx", "Amber", "Opal", "Jade", "Echo", "Ruby");
ds_list_add(mountain_surnames, "Stoneheart", "Rockfist", "Peakshadow", "Cliffwarden", "Ironridge", "Mountainroar", "Stoneshield", "Slatevein", "Cragclimber", "Boulderspire");

// Cultura da Planície
plain_male_names = ds_list_create();
plain_female_names = ds_list_create();
plain_surnames = ds_list_create();
ds_list_add(plain_male_names, "Heath", "Winden", "Dale", "Prairie", "Fielding", "Barley", "Rye", "Rustle", "Gale", "Skyler");
ds_list_add(plain_female_names, "Meadow", "Savannah", "Breeze", "Sunny", "Dune", "Sky", "Horizon", "Zephyra", "Cloud", "Raina");
ds_list_add(plain_surnames, "Windchaser", "Sunfield", "Grasswhistle", "Skygazer", "Meadowlark", "Vastland", "Horizonseeker", "Dunesong", "Prairieheart", "Gustwalker");

// Cultura Costeira
coastal_male_names = ds_list_create();
coastal_female_names = ds_list_create();
coastal_surnames = ds_list_create();
ds_list_add(coastal_male_names, "Bay", "Reef", "Harbor", "Mako", "Finn", "Tide", "Lagoon", "Cove", "Coral", "Drift");
ds_list_add(coastal_female_names, "Marina", "Delta", "Ariel", "Pearl", "Shelly", "Misty", "Isla", "Brook", "Wave", "Oceana");
ds_list_add(coastal_surnames, "Seadrift", "Tidewalker", "Oceansong", "Coralheart", "Wavechaser", "Shellfinder", "Lagoonlight", "Sandwhisper", "Pearlcatcher", "Sunsplash");

// --- Configuração inicial do tempo ---
day = 1;
month = 1;
year = 1;
alarm[0] = game_pace * room_speed;  // 24 segundos

// Variáveis de zoom
zoom_factor = 1   // Fator de zoom atual
zoom_speed = 0.1;  // Velocidade do zoom (quanto o zoom muda a cada rolagem)
min_zoom = 0.8;   // Exemplo: mínimo de 50% do tamanho original
max_zoom = 2;




