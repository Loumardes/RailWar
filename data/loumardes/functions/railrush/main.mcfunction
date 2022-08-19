
#handles all detonation cases of the tnt cart
execute as @e[type=command_block_minecart, tag=TNTcart] at @s run function loumardes:railrush/tntcart_trigger

#moves players from worldspawn to lobby
execute positioned 0 0 0 run tp @a[distance=..5] -5000 1 0

execute if score GameRunning Constant matches 1 run function loumardes:railrush/game_running

#Converts gold carts into iron carts
execute as @e[type=marker,tag=RW_forge] at @s as @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/forge_convert

#Prime TNT carts when players use the tool for it
execute as @a[scores={Click=1..}] at @s anchored eyes run function loumardes:railrush/item/cart_primer/prime_cart
scoreboard players reset @a Click

#display particles on primed minecart (minecarts are affiched one tick behind their actual location)
scoreboard players add @e[type=marker,tag=CartParticles] Process 1
execute as @e[type=marker,tag=CartParticles] if score @s Process matches 4.. at @s run function loumardes:railrush/particles/cart_particles
execute as @e[type=command_block_minecart, tag=TNTcart] at @s run function loumardes:railrush/particles/cart_marker

#lift the minecarts on vines
execute as @e[type=command_block_minecart] at @s run function loumardes:railrush/item/cart_lift

#jump pad : launch carts and grant jump boost
execute as @e[type=command_block_minecart,tag=JumpPadForward] at @s run function loumardes:railrush/item/jump_pad_forward
execute as @e[type=command_block_minecart] at @s if block ~ ~-1 ~ emerald_block run function loumardes:railrush/item/jump_pad
execute as @a at @s if block ~ ~-1 ~ emerald_block run effect give @s minecraft:jump_boost 1 8

#starts the game if someone runs the command
execute if entity @a[scores={startGame=1..2147483647}] run function loumardes:railrush/startgame
scoreboard players reset @a startGame
scoreboard players enable @a startGame

