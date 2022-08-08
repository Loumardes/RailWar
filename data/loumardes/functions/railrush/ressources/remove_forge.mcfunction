tag @e[type=marker,tag=RW_forge,sort=nearest,limit=1] add RW_this


execute at @e[type=marker,tag=RW_this,limit=1] run setblock ~ ~-1 ~ air
execute at @e[type=marker,tag=RW_this,limit=1] run setblock ~1 ~-1 ~ air
execute at @e[type=marker,tag=RW_this,limit=1] run setblock ~-1 ~-1 ~ air
execute at @e[type=marker,tag=RW_this,limit=1] run setblock ~ ~-1 ~1 air
execute at @e[type=marker,tag=RW_this,limit=1] run setblock ~ ~-1 ~-1 air

kill @e[type=marker,tag=RW_this,limit=1]
