#Handle all game logic while it is running

#handles all detonation cases of the tnt cart
execute as @e[type=command_block_minecart,tag=TNTcart] at @s run function loumardes:railrush/tnt_cart/trigger

#run the tntcart setoff function if the cart is not too close from it's crystal
execute as @e[type=command_block_minecart,tag=setoff,tag=blue] at @s unless entity @e[type=marker,tag=blue_crystal,distance=..20,limit=1] run function loumardes:railrush/detonate_tntcart
execute as @e[type=command_block_minecart,tag=setoff,tag=blue] at @s if entity @e[type=marker,tag=blue_crystal,distance=..20,limit=1] run tag @s remove setoff
execute as @e[type=command_block_minecart,tag=setoff,tag=red] at @s unless entity @e[type=marker,tag=red_crystal,distance=..20,limit=1] run function loumardes:railrush/detonate_tntcart
execute as @e[type=command_block_minecart,tag=setoff,tag=red] at @s if entity @e[type=marker,tag=red_crystal,distance=..20,limit=1] run tag @s remove setoff

#replace destroyed tnt minecarts
function loumardes:railrush/tnt_cart/spawn_blue
function loumardes:railrush/tnt_cart/spawn_red

#destroy gold carts stepping on powered activator rails
execute as @e[type=command_block_minecart,tag=RessourceCart] at @s if block ~ ~ ~ activator_rail[powered=true] run function loumardes:railrush/destroy_goldcart

#replace destroyed gold minecarts
tag @e[type=marker,tag=RW_gold_spawner] add RW_Check_Cart
execute as @e[type=command_block_minecart,tag=RessourceCart] run function loumardes:railrush/ressources/check_cart
execute as @e[type=marker,tag=RW_Check_Cart] at @s run function loumardes:railrush/ressources/spawn_cart

#adds collected carts to score
execute as @e[type=marker,tag=ressource_collector] at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,tag=RessourceCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/collect_cart

#grants reward if someone was killed by tnt cart
execute if entity @a[tag=killed_by_tnt_cart,limit=1] run function loumardes:railrush/kill/explosion_reward

#checks shops orders
execute as @e[type=marker,tag=shop] at @s if block ~ ~1 ~ #loumardes:railrush/redstone_activator[powered=true] run function loumardes:railrush/item/shop/check_bought

#checks nexus integrity
execute as @e[type=marker,tag=crystal] at @s unless predicate loumardes:intact_nexus run tag @s add destroyed
execute unless entity @e[type=marker,tag=blue_crystal,tag=!destroyed] run function loumardes:railrush/blue_team_eliminated
execute unless entity @e[type=marker,tag=red_crystal,tag=!destroyed] run function loumardes:railrush/red_team_eliminated

