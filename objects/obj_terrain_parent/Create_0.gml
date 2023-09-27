//default terrain father
image_speed = 0;
image_index = irandom(image_number-1);
click_count = 0;

//generate map resources
if sprite_index = spr_Water{
wood_count = 0;;
stone_count = 0;
iron_count = 0;
coal_count = 0;

fruits_count = 0;
fish_count = "Unlimited";
animal_count = 0;
farmable_land = 0;

build_space = 0;
}

if sprite_index = spr_Mud{
wood_count = irandom_range(0,100);;
stone_count = irandom_range(250,500);
iron_count = irandom_range(250,500);
coal_count = irandom_range(250,500);

fruits_count = 0;
fish_count = "Unlimited";
animal_count = irandom_range(0,50);
farmable_land = 0;

build_space = 100;
}

if sprite_index = spr_Sand{
wood_count = irandom_range(0,200);;
stone_count = irandom_range(500,1000);
iron_count = irandom_range(500,1000);
coal_count = irandom_range(500,1000);

fruits_count = 0;
fish_count = 0;
animal_count = irandom_range(0,100);
farmable_land = 0;

build_space = 100;
}

if sprite_index = spr_Grass{
wood_count = irandom_range(500,1000);;
stone_count = irandom_range(100,500);
iron_count = irandom_range(100,500);
coal_count = irandom_range(100,500);

fruits_count = irandom_range(250,500);
fish_count = irandom_range(0,500);
animal_count = irandom_range(500,1000);
farmable_land = 100;

build_space = 100;
}

if sprite_index = spr_Snow{
wood_count = irandom_range(500,1000);;
stone_count = irandom_range(500,1000);
iron_count = irandom_range(500,1000);
coal_count = irandom_range(500,1000);

fruits_count = 0;
fish_count = irandom_range(50,300);
animal_count = irandom_range(500,500);
farmable_land = 0;

build_space = 100;
}




//Set limits
fish_count_max = fish_count;
animal_count_max = animal_count
fruits_count_max = fruits_count;
wood_count_max = wood_count;
farmable_land_max = farmable_land;
build_space_max = 100;


//Persistance
persistent = true;