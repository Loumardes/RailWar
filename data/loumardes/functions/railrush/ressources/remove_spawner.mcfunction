tag @e[type=marker,tag=RW_gold_spawner,sort=nearest,limit=1] add RW_this

execute as @e[type=marker,tag=RW_gold_spawner] if score @s RW_spawner_id > @e[type=marker,tag=RW_this,limit=1] RW_spawner_id run scoreboard players remove @s RW_spawner_id 1

execute at @e[type=marker,tag=RW_this,limit=1] run setblock ~ ~-1 ~ air
kill @e[type=marker,tag=RW_this,limit=1]
