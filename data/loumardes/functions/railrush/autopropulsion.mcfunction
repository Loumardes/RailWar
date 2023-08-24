
scoreboard players operation @s MotionX *= 120 Constant
scoreboard players operation @s MotionZ *= 120 Constant

scoreboard players operation @s MotionX /= 100 Constant
scoreboard players operation @s MotionZ /= 100 Constant

execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s MotionX
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s MotionZ
