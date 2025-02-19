//wall sprites from tgmc
/turf/closed/wall/halflife
	name = "wall"
	desc = "A sturdy wall."
	max_integrity = 1000
	baseturfs = /turf/open/floor/plating/ground/dirt

/turf/closed/wall/halflife/wood
	name = "wooden wall"
	icon = 'hl13/icons/turf/walls/woodwall.dmi'
	desc = "A old wooden wall, somehow still standing after all this time."
	icon_state = "woodwall-0"
	base_icon_state = "woodwall"

/turf/closed/wall/halflife/brick
	name = "brick wall"
	icon = 'hl13/icons/turf/walls/brick.dmi'
	desc = "A sturdy wall made of bricks."
	icon_state = "wall-0"
	base_icon_state = "wall"
	sheet_type = /obj/item/stack/sheet/halflife/brick
	sheet_amount = 2

/turf/closed/wall/halflife/brick/weak
	max_integrity = 300

/turf/closed/wall/halflife/brick/grey
	icon = 'hl13/icons/turf/walls/brickgrey.dmi'

/turf/closed/wall/halflife/concrete
	name = "concrete wall"
	icon = 'hl13/icons/turf/walls/concrete.dmi'
	desc = "A dirty wall of old concrete."
	icon_state = "wall-0"
	base_icon_state = "wall"

/turf/closed/wall/halflife/sewer
	name = "concrete wall"
	icon = 'hl13/icons/turf/walls/sewer.dmi'
	desc = "A dirty wall of old concrete."
	icon_state = "wall-0"
	base_icon_state = "wall"

/turf/closed/wall/halflife/metal
	name = "metal wall"
	icon = 'hl13/icons/turf/walls/metal.dmi'
	desc = "A strange metal wall with various pipes set into it."
	icon_state = "urban_wall_regular-0"
	base_icon_state = "urban_wall_regular"

/turf/closed/wall/halflife/metal/weak
	max_integrity = 300
