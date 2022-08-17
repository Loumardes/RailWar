summon command_block_minecart ~ ~ ~ {Invulnerable:true,Tags:["GoldCart","RessourceCart","newCart"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:raw_gold_block"},DisplayOffset:6,Command: "Yes I am secretly a commandblock minecart ;)"}
scoreboard players operation @e[type=command_block_minecart,tag=newCart,limit=1] RW_spawner_id = @s RW_spawner_id

tag @e[type=command_block_minecart,tag=newCart,limit=1] remove newCart
tag @s remove RW_Check_Cart