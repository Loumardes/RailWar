
execute store result score RedCartCount Process if entity @e[type=command_block_minecart,tag=red]

execute if score RedCartCount Process < RedCartCount Variable as @e[type=marker,tag=red_tnt_spawner] at @s unless entity @e[type=command_block_minecart,distance=..1] run summon command_block_minecart ~ ~ ~ {Invulnerable:true,Tags:["TNTcart","red"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:6,Command: "Yes I am secretly a commandblock minecart ;)"}

#schedule function loumardes:railrush/tnt_cart/spawn_red 10t replace
