#Allow to ignite the carts you are aiming at

#command to start the recursivity :
#execute as @s at @s anchored eyes run function loumardes:railrush/item/cart_primer/prime_cart

execute if entity @s[team=blue] as @e[type=command_block_minecart,tag=blue, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] unless score @s TNTFuse matches 0..2147483647 run scoreboard players set @s TNTFuse 80
execute if entity @s[team=red] as @e[type=command_block_minecart, tag=red, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] unless score @s TNTFuse matches 0..2147483647 run scoreboard players set @s TNTFuse 80


scoreboard players add @s Process 1
execute if score @s Process matches 10.. run particle flame ~ ~ ~ 0 0 0 0.01 20 normal

execute unless entity @e[type=command_block_minecart, tag=TNTcart,dx=0,dy=-0.5,dz=0,limit=1] unless score @s Process matches 10.. positioned ^ ^ ^0.5 run function loumardes:railrush/item/cart_primer/prime_cart

scoreboard players reset @s Process 
