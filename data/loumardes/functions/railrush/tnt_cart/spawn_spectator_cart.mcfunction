
execute store result score SpectatorCartCount Process if entity @e[type=command_block_minecart,tag=spectator_team]

execute if score SpectatorCartCount Process < SpectatorCartCount Variable unless entity @e[type=command_block_minecart,distance=..1] run summon command_block_minecart ~ ~ ~ {Invulnerable:true,Tags:["TNTcart","spectator_team"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:6,Command: "Yes I am secretly a commandblock minecart ;)"}

#schedule function loumardes:railrush/tnt_cart/spawn_red 10t replace
