/turf/open/floor/plating/indoor
	gender = PLURAL
	name = "flooring"
	baseturfs = /turf/open/floor/plating/ground/dirt
	icon = 'hl13/icons/turf/floor/floors.dmi'
	attachment_holes = FALSE
	var/has_alternate_states = FALSE //for damage, alts etc.
	var/alternate_states = 1
	var/has_base_states = FALSE //for starting variety (mainly wood)
	var/base_states = 1

/turf/open/floor/plating/indoor/Initialize()
	. = ..()
	if(has_alternate_states)
		if(prob(45))
			icon_state = "[icon_state]_[rand(1,(alternate_states))]"

/turf/open/floor/plating/indoor/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return

/turf/open/floor/plating/indoor/break_tile()
	return //unbreakable

/turf/open/floor/plating/indoor/burn_tile()
	return //unburnable

/turf/open/floor/plating/indoor/MakeSlippery(wet_setting, min_wet_time, wet_time_to_add, max_wet_time, permanent)
	return

/turf/open/floor/plating/indoor/MakeDry()
	return

//turf/open/floor/plating/indoor/can_have_cabling()
	//return

/turf/open/floor/plating/indoor/wood
	name = "wood floor"
	icon_state = "wood"
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/indoor/woodc
	name = "wood floor"
	icon_state = "wood_common"
	alternate_states = 7
	footstep = FOOTSTEP_WOOD
	barefootstep = FOOTSTEP_WOOD_BAREFOOT
	clawfootstep = FOOTSTEP_WOOD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	has_alternate_states = TRUE
	has_base_states = TRUE

/turf/open/floor/plating/indoor/woodc/fancy
	icon_state = "wood_fancy"

/turf/open/floor/plating/indoor/woodc/wide
	icon_state = "wood_wide"

/turf/open/floor/plating/indoor/woodc/mosaic
	icon_state = "wood_mosaic"

/turf/open/floor/plating/indoor/grimy
	icon_state = "grimy"

/turf/open/floor/plating/indoor/showroom
	icon_state = "showroomfloor"

/turf/open/floor/plating/indoor/sterile
	icon_state = "sterileplate"

/turf/open/floor/plating/indoor/sterilesquares
	icon_state = "sterilesquares"

/turf/open/floor/plating/indoor/greentile
	icon_state = "greentile"

/turf/open/floor/plating/indoor/grooved
	icon_state = "grooved"

/turf/open/floor/plating/indoor/grooved2
	icon_state = "grooved2"

/turf/open/floor/plating/indoor/lino
	icon_state = "lino"

/turf/open/floor/plating/indoor/tiled9
	icon_state = "tiled9"

/turf/open/floor/plating/indoor/tiled10
	icon_state = "tiled10"

/turf/open/floor/plating/indoor/trainfloor
	icon_state = "train"


/turf/open/floor/plating/indoor/concrete
	icon_state = "concrete_big"
	desc = "Concrete slabs."
	footstep = FOOTSTEP_CONCRETE

/turf/open/floor/plating/indoor/concrete/small
	icon_state = "concrete_small"
	has_alternate_states = TRUE
	has_base_states = TRUE
	alternate_states = 2

/turf/open/floor/plating/indoor/concrete/bricks
	icon_state = "concrete_bricks"
	has_alternate_states = TRUE
	has_base_states = TRUE
	alternate_states = 8

/turf/open/floor/plating/indoor/checkered
	icon_state = "checker_large"
	alternate_states = 3
	has_alternate_states = TRUE
	has_base_states = TRUE

/turf/open/floor/plating/indoor/cafeteria
	icon_state = "cafe_large"
	alternate_states = 3
	has_alternate_states = TRUE
	has_base_states = TRUE

/turf/open/floor/plating/indoor/tile
	icon_state = "grey"
	alternate_states = 3
	has_alternate_states = TRUE
	has_base_states = TRUE

/turf/open/floor/plating/indoor/tile/navy
	icon_state = "navy"
	alternate_states = 3
	has_alternate_states = TRUE
	has_base_states = TRUE

/turf/open/floor/plating/indoor/tile/navy/cold
	initial_gas_mix = TCOMMS_ATMOS


/turf/open/floor/plating/indoor/metal
	footstep = FOOTSTEP_PLATING
	barefootstep = FOOTSTEP_HARD_BAREFOOT
	clawfootstep = FOOTSTEP_HARD_CLAW
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	icon_state = "steel_tiles"
	desc = "Metal flooring."

/turf/open/floor/plating/indoor/metal/plate
	icon_state = "steel_solid"

/turf/open/floor/plating/indoor/metal/combine
	icon_state = "combine_metal"

/turf/open/floor/plating/indoor/metal/grate
	icon_state = "steel_grate"

/turf/open/floor/plating/indoor/metal/pipe
	icon_state = "pipe_straight"

/turf/open/floor/plating/indoor/metal/pipe/corner
	icon_state = "pipe_corner"

/turf/open/floor/plating/indoor/metal/pipe/intersection
	icon_state = "pipe_intersection"

/turf/open/floor/plating/indoor/metal/industrial
	icon_state = "steel_industrial"

/turf/open/floor/plating/indoor/metal/grate
	icon_state = "steel_grate"

/turf/open/floor/plating/indoor/metal/grate/border
	icon_state = "steel_grate_border"

/turf/open/floor/plating/indoor/metal/grate/border/warning
	icon_state = "steel_grate_warning"

/turf/open/floor/plating/indoor/metal/walkway
	icon_state = "steel_walkway"

/turf/open/floor/plating/indoor/metal/walkway/corner
	icon_state = "steel_walkway_corner"

/turf/open/floor/plating/indoor/metal/walkway/end
	icon_state = "steel_walkway_end"

/turf/open/floor/plating/indoor/carpet
	name = "carpet"
	desc = "carpeted wooden flooring."
	icon_state = "carpet_fancy_red"
	footstep = FOOTSTEP_CARPET
	barefootstep = FOOTSTEP_CARPET_BAREFOOT
	clawfootstep = FOOTSTEP_CARPET_BAREFOOT
	has_alternate_states = FALSE
	flags_1 = NONE
	bullet_bounce_sound = null
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE
	has_base_states = FALSE

/turf/open/floor/plating/indoor/carpet/blue
	icon_state = "carpet_fancy_blue"

/turf/open/floor/plating/indoor/carpet/green
	icon_state = "carpet_fancy_green"

/turf/open/floor/plating/indoor/carpet/violet
	icon_state = "carpet_fancy_violet"

/turf/open/floor/plating/indoor/carpet/shaggy
	icon_state = "carpet_red"


/turf/open/floor/plating/indoor/carpet/shaggy/blue
	icon_state = "carpet_blue"


/turf/open/floor/plating/indoor/carpet/shaggy/green
	icon_state = "carpet_green"


/turf/open/floor/plating/indoor/carpet/shaggy/violet
	icon_state = "carpet_violet"

//from Mojave Sun 13

/turf/open/floor/plating/ground
	baseturfs = /turf/open/floor/plating/dirt
	turf_flags = NO_RUST
	tiled_dirt = FALSE
	light_power = 0.20
	light_range = 0.25
	var/border_icon
	var/has_alternate_states = FALSE //for damage, alts etc.
	var/alternate_states = 1
	var/has_base_states = FALSE //for starting variety (mainly wood)
	var/base_states = 1

	smoothing_groups = SMOOTH_GROUP_OPEN_FLOOR
	canSmoothWith = SMOOTH_GROUP_OPEN_FLOOR
	initial_gas_mix = OPENTURF_DEFAULT_ATMOS

/turf/open/floor/plating/ground/Initialize()
	. = ..()
	if(has_alternate_states)
		if(prob(20))
			icon_state = "[icon_state]_[rand(1,(alternate_states))]"

/turf/open/floor/plating/ground/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return

/turf/open/floor/plating/ground/break_tile()
	return //unbreakable

/turf/open/floor/plating/ground/burn_tile()
	return //unburnable

/turf/open/floor/plating/ground/MakeSlippery(wet_setting, min_wet_time, wet_time_to_add, max_wet_time, permanent)
	return

/turf/open/floor/plating/ground/MakeDry()
	return

/turf/open/floor/plating/ground/can_have_cabling()
	return

/turf/open/floor/plating/ground/dirt
	gender = PLURAL
	name = "dirt"
	desc = "Upon closer examination, it's still dirt."
	icon = 'icons/turf/floors.dmi'
	icon_state = "dirt"
	baseturfs = /turf/open/floor/plating/ground/dirt
	planetary_atmos = TRUE
	attachment_holes = FALSE
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/turf/open/floor/plating/ground/dirt/alt
	icon_state = "greenerdirt"

/turf/open/floor/plating/ground/rockunder
	gender = PLURAL
	name = "dirt"
	desc = "Upon closer examination, it's still dirt."
	icon = 'icons/turf/floors.dmi'
	icon_state = "dirt"
	baseturfs = /turf/open/floor/plating/ground/rockunder
	planetary_atmos = TRUE
	attachment_holes = FALSE
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	light_power = 0
	light_range = 0


/turf/open/floor/plating/ground/brickroad
	name = "\proper road"
	desc = "A stretch of road."
	baseturfs = /turf/open/floor/plating/ground/brickroad
	icon = 'hl13/icons/turf/floor/stonebrick.dmi'
	icon_state = "brick"
	base_icon_state = "brick"
	footstep = FOOTSTEP_CONCRETE
	has_base_states = TRUE
	has_alternate_states = TRUE
	alternate_states = 8

////Sidewalks////

/turf/open/floor/plating/ground/sidewalk
	name = "sidewalk"
	desc = "Paved tiles specifically designed for walking upon."
	baseturfs = /turf/open/floor/plating/ground/sidewalk
	icon = 'hl13/icons/turf/floor/sidewalk.dmi'
	icon_state = "sidewalk"
	base_icon_state = "sidewalk"
	footstep = FOOTSTEP_CONCRETE
	has_base_states = TRUE
	has_alternate_states = TRUE
	alternate_states = 4

/turf/open/floor/plating/ground/sidewalk/inner
	baseturfs = /turf/open/floor/plating/ground/sidewalk/inner
	icon_state = "sidewalkinside"
	base_icon_state = "sidewalkinside"
	alternate_states = 2

/turf/open/floor/plating/dirt
	gender = PLURAL
	name = "dirt"
	desc = "Upon closer examination, it's still dirt."
	icon = 'icons/turf/floors.dmi'
	icon_state = "dirt"
	baseturfs = /turf/open/floor/plating/dirt
	planetary_atmos = TRUE
	attachment_holes = FALSE
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY
	tiled_dirt = FALSE

/turf/open/floor/plating/dirt/dark
	icon_state = "greenerdirt"

/turf/open/floor/plating/dirt/try_replace_tile(obj/item/stack/tile/T, mob/user, params)
	return
