execute align xyz positioned ~0.5 ~0.2 ~0.5 run summon marker ~ ~ ~ {Tags:["RW_gold_spawner"]} 

scoreboard players add @e[type=marker,tag=RW_gold_spawner] RW_spawner_id 1
scoreboard players add @e[type=chest_minecart,tag=GoldCart] RW_spawner_id 1

setblock ~ ~-1 ~ crying_obsidian

