#Handle all game logic while it is running

#set off the tnt minecart if it contacts fire (invulnerable makes it immune)
execute as @e[type=tnt_minecart] at @s if block ~ ~ ~ fire run data merge entity @s {TNTFuse:0}

#replace destroyed tnt minecarts
execute unless entity @e[type=tnt_minecart,tag=blue,limit=1] as @e[type=marker,tag=blue_tnt_spawner] at @s run summon tnt_minecart ~ ~ ~ {Invulnerable:true,Tags:["blue"]}
execute unless entity @e[type=tnt_minecart,tag=red,limit=1] as @e[type=marker,tag=red_tnt_spawner] at @s run summon tnt_minecart ~ ~ ~ {Invulnerable:true,Tags:["red"]}

#destroy gold carts stepping on powered activator rails
execute as @e[type=chest_minecart,tag=GoldCart] at @s if block ~ ~ ~ activator_rail[powered=true] run function loumardes:railrush/destroy_goldcart

#replace destroyed gold minecarts
tag @e[type=marker,tag=RW_gold_spawner] add RW_Check_Cart
execute as @e[type=chest_minecart,tag=GoldCart] run function loumardes:railrush/ressources/check_cart
execute as @e[type=marker,tag=RW_Check_Cart] at @s run function loumardes:railrush/ressources/spawn_cart

#adds collected carts to score
execute as @e[type=marker,tag=blue_ressource_collector] at @s if entity @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue gold 1
execute as @e[type=marker,tag=red_ressource_collector] at @s if entity @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red gold 1
execute as @e[type=marker,tag=ressource_collector] at @s at @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run particle block gold_block ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute as @e[type=marker,tag=ressource_collector] at @s run kill @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1]

execute as @e[type=marker,tag=blue_ressource_collector] at @s if entity @e[type=chest_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Blue iron 1
execute as @e[type=marker,tag=red_ressource_collector] at @s if entity @e[type=chest_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run scoreboard players add Red iron 1
execute as @e[type=marker,tag=ressource_collector] at @s at @e[type=chest_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1] run particle block iron_bars ~ ~ ~ 0.5 0.5 0.5 4 40 normal
execute as @e[type=marker,tag=ressource_collector] at @s run kill @e[type=chest_minecart,tag=IronCart,dx=0,dy=0,dz=0,limit=1]


#checks nexus integrity
execute as @e[type=marker,tag=crystal] at @s unless predicate loumardes:intact_nexus run tag @s add destroyed
execute unless entity @e[type=marker,tag=blue_crystal,tag=!destroyed] run function loumardes:railrush/blue_team_eliminated
execute unless entity @e[type=marker,tag=red_crystal,tag=!destroyed] run function loumardes:railrush/red_team_eliminated

