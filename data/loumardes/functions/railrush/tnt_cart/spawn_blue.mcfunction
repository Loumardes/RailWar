
execute store result score BlueCartCount Process if entity @e[type=command_block_minecart,tag=blue]

execute if score BlueCartCount Process < BlueCartCount Variable unless entity @e[type=command_block_minecart,distance=..1] run summon command_block_minecart ~ ~ ~ {Invulnerable:true,Tags:["TNTcart","blue"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:6,Command: "Yes I am secretly a commandblock minecart ;)"}

#schedule function loumardes:railrush/tnt_cart/spawn_blue 10t replace
