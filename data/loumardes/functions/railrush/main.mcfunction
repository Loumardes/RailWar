

#get the motion of the carts
execute as @e[type=command_block_minecart] store result score @s MotionX run data get entity @s Motion[0] 1000
execute as @e[type=command_block_minecart] store result score @s MotionZ run data get entity @s Motion[2] 1000
execute as @e[type=command_block_minecart] store result score @s FallDistance run data get entity @s FallDistance 1000

execute as @e[type=minecart] store result score @s MotionX run data get entity @s Motion[0] 1000
execute as @e[type=minecart] store result score @s MotionZ run data get entity @s Motion[2] 1000

#propels minecarts on rails
execute as @e[type=command_block_minecart] at @s run function loumardes:railrush/autopropulsion
execute as @e[type=minecart] at @s run function loumardes:railrush/autopropulsion

#moves players from worldspawn to lobby
execute positioned 0 0 0 run tp @a[distance=..5] -5000 1 0

#Converts gold carts into iron carts
execute as @e[type=marker,tag=RW_forge] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/forge_convert

#Converts tnt carts into coal carts
execute unless entity @e[type=command_block_minecart,tag=CoalCart,limit=1] as @e[type=marker,tag=RW_coal_mine] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart,tag=TNTcart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/coal_convert

#Prime TNT carts when players use the tool for it
execute as @a[scores={Click=1..}] at @s positioned ~ ~1.5 ~ run function loumardes:railrush/item/remote_activator/activate
scoreboard players reset @a Click

#display particles on primed minecart (minecarts are affiched one tick behind their actual location)
scoreboard players add @e[type=marker,tag=CartParticles] Process 1
execute as @e[type=marker,tag=CartParticles] if score @s Process matches 4.. at @s run function loumardes:railrush/particles/cart_particles
execute as @e[type=command_block_minecart, tag=TNTcart] at @s run function loumardes:railrush/particles/cart_marker

#lift the minecarts on vines
execute as @e[type=command_block_minecart] at @s run function loumardes:railrush/item/cart_lift
execute as @e[type=minecart] at @s run function loumardes:railrush/item/cart_lift

#jump pad : launch carts and grant jump boost
execute as @e[type=command_block_minecart] at @s if block ~ ~-1 ~ emerald_block run function loumardes:railrush/item/jump_pad/launch
execute as @e[type=minecart] at @s if block ~ ~-1 ~ emerald_block run function loumardes:railrush/item/jump_pad/launch
execute as @e[tag=vector_motion] at @s run function loumardes:railrush/vector_motion/launched_cart
execute as @a at @s if block ~ ~-1 ~ emerald_block run effect give @s minecraft:jump_boost 1 8

#starts the game if someone runs the command
execute if entity @a[scores={startGame=1..2147483647}] run function loumardes:railrush/startgame
scoreboard players reset @a startGame
scoreboard players enable @a startGame

#apply inventory changes to killed players
execute as @a[scores={Killed=1..}] run function loumardes:railrush/item/death_changes

execute if score GameRunning Constant matches 1 run function loumardes:railrush/game_running
