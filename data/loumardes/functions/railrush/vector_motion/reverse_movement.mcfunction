
#cancel last gravity change
scoreboard players operation @s VectorY += VectorGravity Constant

#revert last movement (current position still stored in scores)
scoreboard players operation @s Var1 -= @s VectorX
scoreboard players operation @s Var2 -= @s VectorY
scoreboard players operation @s Var3 -= @s VectorZ

execute store result entity @s Pos[0] double 0.001 run scoreboard players get @s Var1
execute store result entity @s Pos[1] double 0.001 run scoreboard players get @s Var2
execute store result entity @s Pos[2] double 0.001 run scoreboard players get @s Var3
