


#replace destroyed tnt minecarts
execute as @e[type=marker,tag=blue_tnt_spawner,tag=sandbox] at @s run function loumardes:railrush/tnt_cart/spawn_blue
execute as @e[type=marker,tag=red_tnt_spawner,tag=sandbox] at @s run function loumardes:railrush/tnt_cart/spawn_red
execute as @e[type=marker,tag=spectator_team_tnt_spawner,tag=sandbox] at @s run function loumardes:railrush/tnt_cart/spawn_spectator_cart

#replace destroyed gold minecarts
tag @e[type=marker,tag=RW_gold_spawner,tag=sandbox] add RW_Check_Cart
execute as @e[type=command_block_minecart,tag=RessourceCart] run function loumardes:railrush/ressources/check_cart
execute as @e[type=marker,tag=RW_Check_Cart] at @s run function loumardes:railrush/ressources/spawn_cart

#adds collected carts to score
execute as @e[type=marker,tag=ressource_collector,tag=sandbox] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=RessourceCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/collect_cart

#checks sandbox crystals integrity
execute as @e[type=marker,tag=crystal,tag=sandbox] at @s unless predicate loumardes:intact_nexus run tag @s add destroyed
execute as @e[type=marker,tag=blue_crystal,tag=destroyed] run function loumardes:railrush/teams/sandbox_destroyed_blue
execute as @e[type=marker,tag=red_crystal,tag=destroyed] run function loumardes:railrush/teams/sandbox_destroyed_red
execute as @e[type=marker,tag=spectator_team_crystal,tag=destroyed] run function loumardes:railrush/teams/sandbox_destroyed_spectators

#grants items outside of the wiewing platform and take them away from the players in it