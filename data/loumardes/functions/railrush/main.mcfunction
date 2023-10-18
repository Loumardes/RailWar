

#get the motion of the carts
execute as @e[type=command_block_minecart] store result score @s MotionX run data get entity @s Motion[0] 1000
execute as @e[type=command_block_minecart] store result score @s MotionZ run data get entity @s Motion[2] 1000
execute as @e[type=command_block_minecart] store result score @s FallDistance run data get entity @s FallDistance 1000

execute as @e[type=minecart] store result score @s MotionX run data get entity @s Motion[0] 1000
execute as @e[type=minecart] store result score @s MotionZ run data get entity @s Motion[2] 1000

#propels minecarts on rails
execute as @e[type=command_block_minecart] at @s run function loumardes:railrush/autopropulsion
execute as @e[type=minecart] at @s run function loumardes:railrush/autopropulsion

#handles all detonation cases of the tnt cart
execute as @e[type=command_block_minecart,tag=TNTcart] at @s run function loumardes:railrush/tnt_cart/trigger

#Prime TNT carts when players use the tool for it
execute as @a[scores={Click=1..}] at @s positioned ~ ~1.5 ~ run function loumardes:railrush/item/remote_activator/activate
scoreboard players reset @a Click

#run the tntcart setoff function if the cart is not too close from it's crystal
execute as @e[type=command_block_minecart,tag=setoff,tag=blue] at @s unless entity @e[type=marker,tag=blue_crystal,distance=..7,limit=1] run function loumardes:railrush/tnt_cart/detonate
execute as @e[type=command_block_minecart,tag=setoff,tag=blue] at @s if entity @e[type=marker,tag=blue_crystal,distance=..7,limit=1] run tag @s remove setoff
execute as @e[type=command_block_minecart,tag=setoff,tag=red] at @s unless entity @e[type=marker,tag=red_crystal,distance=..7,limit=1] run function loumardes:railrush/tnt_cart/detonate
execute as @e[type=command_block_minecart,tag=setoff,tag=red] at @s if entity @e[type=marker,tag=red_crystal,distance=..7,limit=1] run tag @s remove setoff
execute as @e[type=command_block_minecart,tag=setoff,tag=spectator_team] at @s unless entity @e[type=marker,tag=spectator_team_crystal,distance=..7,limit=1] run function loumardes:railrush/tnt_cart/detonate
execute as @e[type=command_block_minecart,tag=setoff,tag=spectator_team] at @s if entity @e[type=marker,tag=spectator_team_crystal,distance=..7,limit=1] run tag @s remove setoff

#display particles on primed minecart (minecarts are affiched one tick behind their actual location)
scoreboard players add @e[type=marker,tag=CartParticles] Process 1
execute as @e[type=marker,tag=CartParticles] if score @s Process matches 4.. at @s run function loumardes:railrush/particles/cart_particles
execute as @e[type=command_block_minecart, tag=TNTcart] at @s run function loumardes:railrush/particles/cart_marker

#Converts gold carts into iron carts
execute as @e[type=marker,tag=RW_forge] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart,tag=GoldCart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/forge_convert

#Converts tnt carts into coal carts
execute unless entity @e[type=command_block_minecart,tag=CoalCart,limit=1] as @e[type=marker,tag=RW_coal_mine] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=command_block_minecart,tag=TNTcart,dx=0,dy=0,dz=0,limit=1] run function loumardes:railrush/ressources/coal_convert

#lift the minecarts on vines
execute as @e[type=command_block_minecart] at @s run function loumardes:railrush/item/cart_lift
execute as @e[type=minecart] at @s run function loumardes:railrush/item/cart_lift

#jump pad : launch carts and grant jump boost
execute as @e[type=command_block_minecart] at @s if block ~ ~-1 ~ emerald_block run function loumardes:railrush/item/jump_pad/launch
execute as @e[type=minecart] at @s if block ~ ~-1 ~ emerald_block run function loumardes:railrush/item/jump_pad/launch
execute as @e[tag=vector_motion] at @s run function loumardes:railrush/vector_motion/launched_cart
execute as @a at @s if block ~ ~-1 ~ emerald_block run effect give @s minecraft:jump_boost 1 8

# delete minecarts which have transported a player
tag @e[type=minecart] add empty
execute as @e[type=minecart] on passengers on vehicle run tag @s remove empty
execute as @e[type=minecart,tag=!wasCarrying] on passengers on vehicle run tag @s add wasCarrying
kill @e[type=minecart,tag=wasCarrying,tag=empty]

#apply inventory changes to killed players
execute as @a[scores={Killed=1..}] run function loumardes:railrush/item/death_changes

#handles players in the worldspawn
execute positioned -5000 0 0 as @a[distance=..5] run function loumardes:railrush/teams/first_connexion

# Mainloop for game and lobby
execute if score GameRunning Constant matches 1 run function loumardes:railrush/game/main
execute if score GameRunning Constant matches 0 run function loumardes:railrush/lobby/main