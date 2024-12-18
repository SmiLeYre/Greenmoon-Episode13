/datum/supply_pack/emergency
	group = "Emergency"
	discountable = SUPPLY_PACK_UNCOMMON_DISCOUNTABLE

/datum/supply_pack/emergency/bio
	name = "Biological Emergency Crate"
	desc = "This crate includes 2 complete bio suits, along with a box containing sterile masks and latex gloves, providing effective protection against viruses."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/item/clothing/head/bio_hood/general = 2,
					/obj/item/clothing/suit/bio_suit/general = 2,
					/obj/item/storage/bag/bio,
					/obj/item/reagent_containers/syringe/antiviral = 2,
					/obj/item/clothing/gloves/latex/nitrile = 2,
					/obj/item/storage/box/masks,
					/obj/item/storage/box/gloves,
				)
	crate_name = "bio suit crate"

/datum/supply_pack/emergency/bomb
	name = "Explosive Emergency Crate"
	desc = "Science gone bonkers? Beeping behind the airlock? Buy now and be the hero the station des... \
		I mean needs! (time not included). Contains one bomb suit and hood, gas mask, and bomb defusal tools."
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/item/clothing/head/utility/bomb_hood,
					/obj/item/clothing/suit/utility/bomb_suit,
					/obj/item/clothing/mask/gas,
					/obj/item/screwdriver,
					/obj/item/wirecutters,
					/obj/item/multitool,
				)
	crate_name = "bomb suit crate"

/datum/supply_pack/emergency/internals
	name = "Internals Crate"
	desc = "Master your life energy and control your breathing with three breath masks, \
		three emergency oxygen tanks and three large air tanks." // IS THAT A
	cost = CARGO_CRATE_VALUE * 2
	contains = list(/obj/item/clothing/mask/gas = 3,
					/obj/item/clothing/mask/breath = 3,
					/obj/item/tank/internals/emergency_oxygen = 3,
					/obj/item/tank/internals/oxygen = 3,
				)
	crate_name = "internals crate"
	crate_type = /obj/structure/closet/crate/internals
