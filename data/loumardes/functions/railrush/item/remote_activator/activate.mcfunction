#Allow to flick levers and ignite carts you are aiming at

#command to start the recursivity :
#execute as @s at @s anchored eyes positioned ^ ^ ^ run function loumardes:railrush/item/remote_activator/activate

#trigger tnt carts of the appropriate team
execute if entity @s[team=blue] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart,tag=blue, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] run tag @s add setoff
execute if entity @s[team=red] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart, tag=red, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] run tag @s add setoff

#rotate switchs
execute positioned ~ ~0.875 ~ if block ~ ~ ~ rail run function loumardes:railrush/item/remote_activator/rotate_rail/main

scoreboard players add @s Process 1
execute if score @s Process matches 10.. run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~0.875 ~ if block ~ ~ ~ rail align xyz positioned ~0.5 ~0.25 ~0.5 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.25 0.125 0.25 0 10 force

execute unless block ~ ~0.875 ~ rail positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=command_block_minecart, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] positioned ~0.5 ~0.5 ~0.5 unless score @s Process matches 300.. positioned ^ ^ ^0.5 run function loumardes:railrush/item/remote_activator/activate

scoreboard players reset @s Process 
