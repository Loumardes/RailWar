tag @s add processingTrigers

#explode if it collides a tnt cart at sufficient speed
execute if score @s MotionX matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=command_block_minecart,dx=0,dy=0,dz=0,tag=TNTcart] add setoff
execute if score @s MotionZ matches 700.. positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=command_block_minecart,dx=0,dy=0,dz=0,tag=TNTcart] add setoff

#get the movement caracteristics for the next tic
execute store result score @s FallDistance run data get entity @s FallDistance 1000
execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

execute if score @s MotionX matches -2147483648..0 run scoreboard players operation @s MotionX *= -1 Constant
execute if score @s MotionZ matches -2147483648..0 run scoreboard players operation @s MotionZ *= -1 Constant

tag @s remove processingTrigers