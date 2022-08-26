function loumardes:railrush/vector_motion/apply_movement

execute at @s unless block ~ ~ ~ air run tag @s add vector_motion_exit

#if only the edge runs into a wall, apply a tag for it and stop movement (positive side picks the adjacent block)
execute at @s unless block ~0.499 ~ ~0.499 air run tag @s[tag=!vector_motion_exit] add is_side_collision
execute at @s unless block ~-0.5 ~ ~0.499 air run tag @s[tag=!vector_motion_exit] add is_side_collision
execute at @s unless block ~0.499 ~ ~-0.5 air run tag @s[tag=!vector_motion_exit] add is_side_collision
execute at @s unless block ~-0.5 ~ ~-0.5 air run tag @s[tag=!vector_motion_exit] add is_side_collision

tag @s[tag=is_side_collision] add vector_motion_exit


execute if entity @s[tag=vector_motion_exit] run function loumardes:railrush/vector_motion/exit

