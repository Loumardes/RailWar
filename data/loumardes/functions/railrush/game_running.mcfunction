#Handle all game logic while it is running

#replace destroyed tnt minecarts
execute unless entity @e[type=command_block_minecart,tag=blue,limit=1] as @e[type=marker,tag=blue_tnt_spawner] at @s run summon command_block_minecart ~ ~ ~ {Invulnerable:true,Tags:["TNTcart","blue"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:6,Command: "Yes I am secretly a commandblock minecart ;)"}
execute unless entity @e[type=command_block_minecart,tag=red,limit=1] as @e[type=marker,tag=red_tnt_spawner] at @s run summon command_block_minecart ~ ~ ~ {Invulnerable:true,Tags:["TNTcart","red"],CustomDisplayTile:1,DisplayState:{Name:"minecraft:tnt"},DisplayOffset:6,Command: "Yes I am secretly a commandblock minecart ;)"}


#destroy gold carts stepping on powered activator rails
execute as @e[type=command_block_minecart,tag=RessourceCart] at @s if block ~ ~ ~ activator_rail[powered=true] run function loumardes:railrush/destroy_goldcart

#replace destroyed gold minecarts
tag @e[type=marker,tag=RW_gold_spawner] add RW_Check_Cart
execute as @e[type=command_block_minecart,tag=RessourceCart] run function loumardes:railrush/ressources/check_cart
execute as @e[type=marker,tag=RW_Check_Cart] at @s run function loumardes:railrush/ressources/spawn_cart

#adds collected carts to score
execute as @e[type=marker,tag=blue_ressource_collector] at @s if entity @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue gold 1
execute as @e[type=marker,tag=red_ressource_collector] at @s if entity @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red gold 1
execute as @e[type=marker,tag=ressource_collector] at @s at @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute as @e[type=marker,tag=ressource_collector] at @s run kill @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1]

execute as @e[type=marker,tag=blue_ressource_collector] at @s if entity @e[type=command_block_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue iron 1
execute as @e[type=marker,tag=red_ressource_collector] at @s if entity @e[type=command_block_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red iron 1
execute as @e[type=marker,tag=ressource_collector] at @s at @e[type=command_block_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run particle block iron_bars ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute as @e[type=marker,tag=ressource_collector] at @s run kill @e[type=command_block_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1]

#upgrade gear if a team brought enough iron
execute if score Blue iron = Blue tech run function loumardes:railrush/item/gear/upgrade_blue
execute if score Red iron = Red tech run function loumardes:railrush/item/gear/upgrade_red

#checks nexus integrity
execute as @e[type=marker,tag=crystal] at @s unless predicate loumardes:intact_nexus run tag @s add destroyed
execute unless entity @e[type=marker,tag=blue_crystal,tag=!destroyed] run function loumardes:railrush/blue_team_eliminated
execute unless entity @e[type=marker,tag=red_crystal,tag=!destroyed] run function loumardes:railrush/red_team_eliminated

