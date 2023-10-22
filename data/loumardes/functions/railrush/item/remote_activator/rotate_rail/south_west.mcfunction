
function loumardes:railrush/item/remote_activator/rotate_rail/connexion/east
execute if entity @s[tag=connecting_east] run setblock ~ ~ ~ rail[shape=south_east]

function loumardes:railrush/item/remote_activator/rotate_rail/connexion/north
execute if entity @s[tag=connecting_north] run setblock ~ ~ ~ rail[shape=north_west]

tag @s add processed_rotation