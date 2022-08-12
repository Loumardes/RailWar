tag @s add processingTrigers

#explode if fall from too high
execute if score @s FallDistance matches 3000.. if entity @s[nbt={OnGround:1b}] unless block ~ ~ ~ #rails run tag @s add setoff

#explode if it collides with something at sufficient speed
execute if score @s MotionX matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,dx=0,dy=0,dz=0,tag=!processingTrigers] run tag @s add setoff
execute if score @s MotionZ matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=command_block_minecart,dx=0,dy=0,dz=0,tag=!processingTrigers] run tag @s add setoff

execute if score @s MotionX matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=chest_minecart,dx=0,dy=0,dz=0,tag=!processingTrigers] run tag @s add setoff
execute if score @s MotionZ matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=chest_minecart,dx=0,dy=0,dz=0,tag=!processingTrigers] run tag @s add setoff

execute if score @s MotionX matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,dy=0,dz=0] run tag @s add setoff
execute if score @s MotionZ matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,dy=0,dz=0] run tag @s add setoff

#explode if decelerated too quickly (THIS HAS BEEN DISABLED BECAUSE IT ALSO DETONATE AT THE END OF A DOWNWARD SLOPE)
#execute if entity @s[nbt={Motion:[0.0,0.0,0.0]}] if score @s MotionX matches 700.. run tag @s add setoff
#execute if entity @s[nbt={Motion:[0.0,0.0,0.0]}] if score @s MotionZ matches 700.. run tag @s add setoff

#decrement tnt cart fuse
execute as @e[type=command_block_minecart, tag=TNTcart] if score @s TNTFuse matches -2147483648..2147483647 run scoreboard players remove @s TNTFuse 1

#set off the tnt cart if it's fuse ran out or if it contacts fire
execute as @e[type=command_block_minecart, tag=TNTcart] if score @s TNTFuse matches 0 at @s run tag @s add setoff
execute as @e[type=command_block_minecart, tag=TNTcart] at @s if block ~ ~ ~ fire run tag @s add setoff

execute if entity @s[tag=setoff] run function loumardes:railrush/detonate_tntcart

#get the movement caracteristics for the next tic
execute store result score @s FallDistance run data get entity @s FallDistance 1000
execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

execute if score @s MotionX matches -2147483648..0 run scoreboard players operation @s MotionX *= -1 Constant
execute if score @s MotionZ matches -2147483648..0 run scoreboard players operation @s MotionZ *= -1 Constant

tag @s remove processingTrigers