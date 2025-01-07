/obj/item/gun/ballistic/automatic/ar2
	name = "\improper OSIPR"
	desc = "A pulse rifle often dubbed the 'AR2'. Boasts superior armor piercing capabilities, accuracy, and firepower. Usually biolocked to only be usable by authorised individuals."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "ar2"
	inhand_icon_state = "arg"
	fire_sound = "hl13/sound/weapons/ar2fire.ogg"
	vary_fire_sound = FALSE
	accepted_magazine_type = /obj/item/ammo_box/magazine/ar2
	force = 10
	recoil = 0.6
	fire_delay = 2
	burst_size = 1
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	pin = /obj/item/firing_pin/implant/mindshield

/obj/item/gun/ballistic/automatic/ar2/nopin
	pin = null

/obj/item/gun/ballistic/automatic/ar2/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.25 SECONDS)

//old rifles that are exclusively loot. Similar to the AR2, but slightly less accurate and slightly slower to fire.
/obj/item/gun/ballistic/automatic/m4a1
	name = "\improper M4A1 Rifle"
	desc = "A old M4A1 pattern rifle. Not as good as the combine's rifles, but still powerful."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "m4a1"
	inhand_icon_state = "arg"
	fire_sound = "sound/items/weapons/gun/rifle/shot.ogg"
	vary_fire_sound = FALSE
	load_sound = "sound/items/weapons/gun/rifle/rifleload.ogg"
	load_empty_sound = "sound/items/weapons/gun/rifle/rifleload.ogg"
	rack_sound = "sound/items/weapons/gun/rifle/bolt_in.ogg"
	eject_sound = "sound/items/weapons/gun/rifle/rifleunload.ogg"
	eject_empty_sound = "sound/items/weapons/gun/rifle/rifleunload.ogg"
	accepted_magazine_type = /obj/item/ammo_box/magazine/m4a1
	force = 10
	fire_delay = 2
	burst_size = 1
	spread = 12
	recoil = 0.8
	can_suppress = FALSE
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	w_class = WEIGHT_CLASS_BULKY

/obj/item/gun/ballistic/automatic/m4a1/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/m4a1/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.3 SECONDS)

//the crossbow
/*
/obj/item/gun/ballistic/bow/crossbow/rebar
	name = "Heated Rebar Crossbow"
	desc = "A handcrafted crossbow that fires heated rods of rebar."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	fire_sound = "hl13/sound/weapons/crossbowfire.ogg"
	draw_sound = 'hl13/sound/weapons/crossbowbolt_load.ogg'
	icon_state = "rebarxbow"
	inhand_icon_state = "rebarxbow"
	vary_fire_sound = FALSE
	force = 12
	spread = 0
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/bow/rebar
*/


/obj/item/gun/ballistic/combine_sniper
	name = "combine sniper rifle"
	desc = "A pulse based marksmen rifle which fires high velocity, devestating rounds."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "combine_sniper"
	inhand_icon_state = "combine_sniper"
	fire_sound = 'hl13/sound/weapons/sniper.ogg'

	var/charge_sound = 'hl13/sound/weapons/sniper_charge.ogg'

	fire_sound_volume = 60
	vary_fire_sound = FALSE
	spread = 5 //very accurate
	force = 15
	recoil = 4
	weapon_weight = WEAPON_HEAVY
	fire_delay = 25
	w_class = WEIGHT_CLASS_BULKY

	accepted_magazine_type = /obj/item/ammo_box/magazine/combine_sniper
	pin = /obj/item/firing_pin/implant/mindshield
	//var/obj/item/attachment/laser_sight/combine/laser

/obj/item/gun/ballistic/combine_sniper/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 3)

/*
/obj/item/gun/ballistic/combine_sniper/Initialize(mapload)
	. = ..()
	laser = new(src)
	laser.on_attach(src)

/obj/item/gun/ballistic/combine_sniper/afterattack(atom/target, mob/living/user, flag, params)
	if(laser.is_on == FALSE)
		to_chat(user, span_userdanger("The laser pointer needs to be on to fire \the [src]!"))
		return
	. = ..()
*/

/obj/item/gun/ballistic/combine_sniper/shoot_live_shot(mob/living/user, pointblank = 0, atom/pbtarget = null, message = 1)
	. = ..()
	sleep(1.25 SECONDS)
	playsound(user, charge_sound, fire_sound_volume, vary_fire_sound)



/obj/item/gun/ballistic/automatic/pistol/usp
	name = "USP Match"
	desc = "A small and light 9mm pistol which is often used as a metropolice standard carry."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "uspmatch"
	accepted_magazine_type = /obj/item/ammo_box/magazine/usp9mm
	can_suppress = TRUE
	fire_sound = "hl13/sound/weapons/uspfire.ogg"
	recoil = 0.4
	vary_fire_sound = FALSE

/obj/item/gun/ballistic/automatic/pistol/usp/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.45 SECONDS)

/obj/item/gun/ballistic/automatic/pistol/usp/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/pistol/usp/suppressed/Initialize(mapload)
	. = ..()
	var/obj/item/suppressor/S = new(src)
	install_suppressor(S)

/obj/item/gun/ballistic/revolver/coltpython
	name = "\improper colt python"
	desc = "An old colt python revolver, accurate but has the kick of a mule. Uses .357 magnum ammo."
	fire_sound = "hl13/sound/weapons/revolverfire.ogg"
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "colt_python"
	inhand_icon_state = "colt_python"
	spread = 3 //very little spread
	recoil = 2 //lots of recoil though
	fire_delay = 8
	vary_fire_sound = FALSE

/obj/item/gun/ballistic/revolver/coltpython/deathmatch_ranger
	fire_delay = 10 //geared towards sniping, not mag dumping

/obj/item/gun/ballistic/shotgun/spas12
	name = "SPAS 12"
	desc = "A spectacularly lethal pump action shotgun, for close encounters."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "spas12"
	slot_flags = ITEM_SLOT_SUITSTORE
	inhand_icon_state = "shotgun_combat"
	fire_sound = "hl13/sound/weapons/shotgunfire.ogg"
	rack_sound = "hl13/sound/weapons/shotgunpump.ogg"
	load_sound = "hl13/sound/weapons/shotgunreload.ogg"
	accepted_magazine_type = /obj/item/ammo_box/magazine/internal/shot/com
	recoil = 1.5
	fire_delay = 7
	vary_fire_sound = FALSE

/obj/item/gun/ballistic/automatic/mp7
	name = "\improper MP7 SMG"
	desc = "Despite its small size, this submachine gun packs a punch and has an extended mag to keep opponents suppressed."
	icon = 'hl13/icons/obj/guns/projectile.dmi'
	icon_state = "mp7"
	fire_sound = "hl13/sound/weapons/smgfire.ogg"
	accepted_magazine_type = /obj/item/ammo_box/magazine/mp7
	bolt_type = BOLT_TYPE_LOCKING
	mag_display = TRUE
	weapon_weight = WEAPON_MEDIUM
	show_bolt_icon = FALSE
	burst_size = 1
	fire_delay = 1
	spread = 14
	recoil = 0.4
	vary_fire_sound = FALSE

/obj/item/gun/ballistic/automatic/mp7/no_mag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/mp7/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/automatic_fire, 0.15 SECONDS)
