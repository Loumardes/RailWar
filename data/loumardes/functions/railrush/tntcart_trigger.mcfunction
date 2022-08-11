execute store result score @s FallDistance run data get entity @s FallDistance 1000
execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000


#decrement tnt cart fuse
execute as @e[type=command_block_minecart, tag=TNTcart] if score @s TNTFuse matches -2147483648..2147483647 run scoreboard players remove @s TNTFuse 1

#set off the tnt cart if it's fuse ran out or if it contacts fire
execute as @e[type=command_block_minecart, tag=TNTcart] if score @s TNTFuse matches 0 at @s run tag @s add setoff
execute as @e[type=command_block_minecart, tag=TNTcart] at @s if block ~ ~ ~ fire run tag @s add setoff

execute if entity @s[tag=setoff] run function loumardes:railrush/detonate_tntcart
