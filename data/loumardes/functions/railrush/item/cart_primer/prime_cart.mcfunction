#Allow to ignite the carts you are aiming at

#command to start the recursivity :
#execute as @s at @s anchored eyes run function loumardes:railrush/item/cart_primer/prime_cart

execute as @e[type=tnt_minecart,dx=0,dy=-0.5,dz=0,limit=1,nbt={TNTFuse:-1}] run data merge entity @s {TNTFuse:80}
execute if entity @e[type=tnt_minecart,dx=0,dy=-0.5,dz=0,limit=1,nbt={TNTFuse:-1}] run particle flame ~ ~ ~ 0.5 0.5 0.5 0.01 20 normal


<<<<<<< Updated upstream
=======
scoreboard players add @s Process 1
execute if score @s Process matches 10.. run particle flame ~ ~ ~ 0 0 0 0.01 20 normal

execute unless entity @e[type=tnt_minecart,dx=0,dy=-0.5,dz=0,limit=1] unless score @s Process matches 10.. positioned ^ ^ ^0.5 run function loumardes:railrush/item/cart_primer/prime_cart

scoreboard players reset @s Process 
