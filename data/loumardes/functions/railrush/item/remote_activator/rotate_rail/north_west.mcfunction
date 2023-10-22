
function loumardes:railrush/item/remote_activator/rotate_rail/connexion/south
execute if entity @s[tag=connecting_south] run setblock ~ ~ ~ rail[shape=south_west]

function loumardes:railrush/item/remote_activator/rotate_rail/connexion/east
execute if entity @s[tag=connecting_east] run setblock ~ ~ ~ rail[shape=north_east]

tag @s add processed_rotation