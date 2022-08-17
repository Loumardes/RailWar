execute store result score @s MotionX run data get entity @s Motion[0] 1000
execute store result score @s MotionZ run data get entity @s Motion[2] 1000

execute store result entity @s Motion[0] double 0.005 run scoreboard players get @s MotionX
execute store result entity @s Motion[2] double 0.005 run scoreboard players get @s MotionZ

tag @s remove JumpPadForward