


execute store result score @s Var1 run data get entity @s Pos[0] 1000
execute store result score @s Var2 run data get entity @s Pos[1] 1000
execute store result score @s Var3 run data get entity @s Pos[2] 1000

scoreboard players operation @s Var1 += @s VectorX
scoreboard players operation @s Var2 += @s VectorY
scoreboard players operation @s Var3 += @s VectorZ

execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s Var1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s Var2
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s Var3

#gravity (490 for 9.81m/s^2)
scoreboard players operation @s VectorY -= VectorGravity Constant
