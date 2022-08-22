execute if score @s StoredMotionX matches 1.. run scoreboard players set @s VectorX 500
execute if score @s StoredMotionX matches 1.. run scoreboard players set @s VectorZ -500

execute if score @s StoredMotionZ matches 1.. run scoreboard players set @s VectorX -500
execute if score @s StoredMotionZ matches 1.. run scoreboard players set @s VectorZ 500


execute if score @s StoredMotionX matches ..-1 run scoreboard players set @s VectorX -500
execute if score @s StoredMotionX matches ..-1 run scoreboard players set @s VectorZ 500

execute if score @s StoredMotionZ matches ..-1 run scoreboard players set @s VectorX 500
execute if score @s StoredMotionZ matches ..-1 run scoreboard players set @s VectorZ -500
