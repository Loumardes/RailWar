execute unless entity @e[type=minecraft:marker,tag=placed_blocks,distance=..9] run summon minecraft:marker ~ ~ ~ {Tags:["placed_blocks"]}
advancement revoke @s only loumardes:placed_block
