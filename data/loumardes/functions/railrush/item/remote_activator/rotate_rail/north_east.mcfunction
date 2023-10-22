
function loumardes:railrush/item/remote_activator/rotate_rail/connexion/west
execute if entity @s[tag=connecting_west] run setblock ~ ~ ~ rail[shape=north_west]

function loumardes:railrush/item/remote_activator/rotate_rail/connexion/south
execute if entity @s[tag=connecting_south] run setblock ~ ~ ~ rail[shape=south_east]

tag @s add processed_rotation