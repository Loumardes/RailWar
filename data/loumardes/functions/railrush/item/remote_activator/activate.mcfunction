#Allow to flick levers and ignite carts you are aiming at

#command to start the recursivity :
#execute as @s at @s anchored eyes run function loumardes:railrush/item/remote_activator/activate

#trigger tnt carts of the appropriate team
execute if entity @s[team=blue] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart,tag=blue, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] unless score @s TNTFuse matches 0..2147483647 run scoreboard players set @s TNTFuse 80
execute if entity @s[team=red] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart, tag=red, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] unless score @s TNTFuse matches 0..2147483647 run scoreboard players set @s TNTFuse 80

#toggle levers
execute if block ~ ~ ~ lever run function loumardes:railrush/item/remote_activator/toggle_lever

scoreboard players add @s Process 1
execute if score @s Process matches 10.. run particle flame ~ ~ ~ 0 0 0 0.01 1 force

execute unless block ~ ~ ~ lever positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=command_block_minecart, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] positioned ~0.5 ~0.5 ~0.5 unless score @s Process matches 300.. positioned ^ ^ ^0.5 run function loumardes:railrush/item/remote_activator/activate

scoreboard players reset @s Process 
