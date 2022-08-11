#decrement tnt cart fuse
execute as @e[type=chest_minecart, tag=TNTcart] if score @s TNTFuse matches -2147483648..2147483647 run scoreboard players remove @s TNTFuse 1

#set off the tnt cart if it's fuse ran out
execute as @e[type=chest_minecart, tag=TNTcart] if score @s TNTFuse matches 0 at @s run function loumardes:railrush/detonate_tntcart

#set off the tnt cart if it contacts fire (invulnerable makes it immune)
execute as @e[type=chest_minecart, tag=TNTcart] at @s if block ~ ~ ~ fire run function loumardes:railrush/detonate_tntcart

#moves players from worldspawn to lobby
execute positioned 0 0 0 run tp @a[distance=..5] -5000 1 0

execute if score GameRunning Constant matches 1 run function loumardes:railrush/game_running

#Converts gold carts into iron carts
execute as @e[type=marker,tag=RW_forge] at @s as @e[type=chest_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/forge_convert

#Prime TNT carts when players use the tool for it
execute as @a[scores={Click=1..}] at @s anchored eyes run function loumardes:railrush/item/cart_primer/prime_cart
scoreboard players reset @a Click

#display particles on primed minecart (minecarts are affiched one tick behind their actual location)
scoreboard players add @e[type=marker,tag=PrimedCartParticles] Process 1
execute as @e[type=marker,tag=PrimedCartParticles] if score @s Process matches 5.. at @s run function loumardes:railrush/particles/primedcart
execute at @e[type=chest_minecart, tag=TNTcart] if score @s TNTFuse matches -2147483648..2147483647 run summon marker ~ ~ ~ {Tags:["PrimedCartParticles"]}
#starts the game if someone runs the command
execute if entity @a[scores={startGame=1..2147483647}] run function loumardes:railrush/startgame
scoreboard players reset @a startGame
scoreboard players enable @a startGame

