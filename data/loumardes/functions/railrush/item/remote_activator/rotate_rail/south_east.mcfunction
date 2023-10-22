
function loumardes:railrush/item/remote_activator/rotate_rail/connexion/north
execute if entity @s[tag=connecting_north] run setblock ~ ~ ~ rail[shape=north_east]

function loumardes:railrush/item/remote_activator/rotate_rail/connexion/west
execute if entity @s[tag=connecting_west] run setblock ~ ~ ~ rail[shape=south_west]

tag @s add processed_rotation