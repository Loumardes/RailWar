tag @s add processingTrigers

#set the fuse of the tnt cart if it stands on a powered activator rail
execute if block ~ ~ ~ activator_rail[powered=true] unless score @s TNTFuse matches 0..2147483647 run scoreboard players set @s TNTFuse 80

#explode if fall from too high
execute if score @s FallDistance matches 3000.. if entity @s[nbt={OnGround:1b}] unless block ~ ~ ~ #rails run tag @s add setoff

#explode if fall from too high in vector mode
execute if entity @s[tag=launchpad_fall,nbt={OnGround:1b}] unless block ~ ~ ~ #rails run tag @s add setoff
execute if entity @s[tag=launchpad_fall] if block ~ ~ ~ #rails run tag @s remove launchpad_fall

#explode if colliding into a wall in vector mode
tag @s[tag=is_side_collision] add setoff

# handle collisions
execute if entity @s[tag=blue] run function loumardes:railrush/tnt_cart/blue_collided
execute if entity @s[tag=red] run function loumardes:railrush/tnt_cart/red_collided
execute if entity @s[tag=spectator_team] run function loumardes:railrush/tnt_cart/spectator_team_collided

# detonate if it reaches the enemy guardian
execute if entity @s[tag=blue] if entity @e[type=furnace_minecart,tag=guardian,tag=!blue,distance=..3,limit=1] run tag @s add setoff
execute if entity @s[tag=red] if entity @e[type=furnace_minecart,tag=guardian,tag=!red,distance=..3,limit=1] run tag @s add setoff
execute if entity @s[tag=spectator_team] if entity @e[type=furnace_minecart,tag=guardian,tag=!spectator_team_guardian,distance=..3,limit=1] run tag @s add setoff

# detonate if it reaches the enemy crystal
execute unless entity @s[tag=blue] if entity @e[type=marker,tag=blue_crystal,distance=..5,limit=1] run tag @s add setoff
execute unless entity @s[tag=red] if entity @e[type=marker,tag=red_crystal,distance=..5,limit=1] run tag @s add setoff
execute unless entity @s[tag=spectator_team] if entity @e[type=marker,tag=spectator_team_crystal,distance=..5,limit=1] run tag @s add setoff

#decrement tnt cart fuse
execute as @e[type=command_block_minecart, tag=TNTcart] if score @s TNTFuse matches -2147483648..2147483647 run scoreboard players remove @s TNTFuse 1

#set off the tnt cart if it's fuse ran out
execute as @e[type=command_block_minecart, tag=TNTcart] if score @s TNTFuse matches 0 at @s run tag @s add setoff
scoreboard players reset @s[tag=setoff] TNTFuse

#set off the tnt cart if it contacts fire
execute as @e[type=command_block_minecart, tag=TNTcart] at @s if block ~ ~ ~ fire run tag @s add setoff

#get the movement caracteristics for the next tic
execute store result score @s FallDistance run data get entity @s FallDistance 1000
execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

execute if score @s MotionX matches -2147483648..0 run scoreboard players operation @s MotionX *= -1 Constant
execute if score @s MotionZ matches -2147483648..0 run scoreboard players operation @s MotionZ *= -1 Constant

tag @s remove processingTrigers