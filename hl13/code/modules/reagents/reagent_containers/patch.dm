/obj/item/reagent_containers/pill/patch/medkit
	name = "medkit"
	desc = "A metal frame encasing a large vial of biogel. Includes useful automatic injection probes and tools for managing the application of the gel."
	list_reagents = list(/datum/reagent/medicine/biogel = 25)
	self_delay = 3.5 SECONDS
	icon = 'hl13/icons/obj/medkits.dmi'
	icon_state = "medkit"
	apply_sound = 'hl13/sound/effects/largemedkit1.ogg'

/obj/item/reagent_containers/pill/patch/medkit/manufactured
	name = "new medkit"
	desc = "A metal frame encasing a large vial of biogel. Includes useful automatic injection probes and tools for managing the application of the gel. This one looks very new, and recently made. Could be sold."

/obj/item/reagent_containers/pill/patch/medkit/vial
	name = "medvial"
	desc = "The standalone vials found inside biogel medkits. Quicker to apply since it lacks the advanced features of medkits, but does not heal as much due to inefficient application of the gel."
	list_reagents = list(/datum/reagent/medicine/biogel = 15)
	self_delay = 2 SECONDS
	icon_state = "medvial"
	apply_sound = 'hl13/sound/effects/smallmedkit1.ogg'

/obj/item/reagent_containers/pill/patch/grubnugget
	name = "grub nugget"
	desc = "A small nugget obtained from an antlion grub. You're not exactly sure what to do with this."
	list_reagents = list(/datum/reagent/medicine/biogel = 10)
	self_delay = 1.5 SECONDS
	icon = 'hl13/icons/mob/halflife.dmi'
	icon_state = "grub_nugget"
	apply_sound = 'hl13/sound/effects/smallmedkit1.ogg'

