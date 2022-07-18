#Handle all game logic while it is running

#set off the tnt minecart is it contacts fire (invulnerable makes it immune)
execute as @e[type=tnt_minecart] at @s if block ~ ~ ~ fire run data merge entity @s {TNTFuse:0}

#replace destroyed tnt minecarts
execute unless entity @e[type=tnt_minecart,tag=blue,limit=1] if entity @r run summon tnt_minecart 5000 1 64 {Invulnerable:true,Tags:["blue"]}
execute unless entity @e[type=tnt_minecart,tag=red,limit=1] if entity @r run summon tnt_minecart 5000 1 -64 {Invulnerable:true,Tags:["red"]}

#destroy gold carts stepping on powered activator rails
execute as @e[type=chest_minecart,tag=GoldCart] at @s if block ~ ~ ~ activator_rail[powered=true] run function loumardes:railrush/destroy_goldcart

#replace destroyed gold minecarts
tag @e[type=marker,tag=RW_gold_spawner] add RW_Check_Cart
execute as @e[type=chest_minecart,tag=GoldCart] run function loumardes:railrush/ressources/check_cart
execute as @e[type=marker,tag=RW_Check_Cart] at @s run function loumardes:railrush/ressources/spawn_cart

#adds collected carts to score
execute positioned 5000.5 1 64.5 if entity @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue gold 1
execute positioned 5000.5 1 64.5 at @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute positioned 5000.5 1 64.5 run kill @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1]
execute positioned 5000.5 1 -63.5 if entity @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red gold 1
execute positioned 5000.5 1 -63.5 at @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute positioned 5000.5 1 -63.5 run kill @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1]

#checks nexus integrity
execute as @e[type=marker,tag=crystal] at @s unless predicate loumardes:intact_nexus run tag @s add destroyed
execute unless entity @e[type=marker,tag=blue_crystal,tag=!destroyed] run function loumardes:railrush/blue_team_eliminated
execute unless entity @e[type=marker,tag=red_crystal,tag=!destroyed] run function loumardes:railrush/red_team_eliminated

