
execute if block ~ ~ ~ rail[shape=north_east] run function loumardes:railrush/item/remote_activator/rotate_rail/north_east
execute unless entity @s[tag=processed_rotation] if block ~ ~ ~ rail[shape=north_west] run function loumardes:railrush/item/remote_activator/rotate_rail/north_west
execute unless entity @s[tag=processed_rotation] if block ~ ~ ~ rail[shape=south_east] run function loumardes:railrush/item/remote_activator/rotate_rail/south_east
execute unless entity @s[tag=processed_rotation] if block ~ ~ ~ rail[shape=south_west] run function loumardes:railrush/item/remote_activator/rotate_rail/south_west

tag @s remove connecting_north
tag @s remove connecting_south
tag @s remove connecting_east
tag @s remove connecting_west

tag @s remove processed_rotation
