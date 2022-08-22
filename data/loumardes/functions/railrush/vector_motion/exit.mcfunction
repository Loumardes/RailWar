#cancel the movement that put it in the blocks
function loumardes:railrush/vector_motion/reverse_movement

data merge entity @s {NoGravity:0b}
execute if score @s VectorY matches ..-665 run tag @s add launchpad_fall
tag @s remove vector_motion

