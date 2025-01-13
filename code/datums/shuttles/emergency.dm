#define EMAG_LOCKED_SHUTTLE_COST (CARGO_CRATE_VALUE * 50)

/datum/map_template/shuttle/emergency
	port_id = "emergency"
	name = "Base Shuttle Template (Emergency)"
	///assoc list of shuttle events to add to this shuttle on spawn (typepath = weight)
	var/list/events
	///pick all events instead of random
	var/use_all_events = FALSE
	///how many do we pick
	var/event_amount = 1
	///do we empty the event list before adding our events
	var/events_override = FALSE

/datum/map_template/shuttle/emergency/New()
	. = ..()
	if(!occupancy_limit && who_can_purchase)
		CRASH("The [name] needs an occupancy limit!")
	if(HAS_TRAIT(SSstation, STATION_TRAIT_SHUTTLE_SALE) && credit_cost > 0 && prob(15))
		var/discount_amount = round(rand(25, 80), 5)
		name += " ([discount_amount]% Discount!)"
		var/discount_multiplier = 100 - discount_amount
		credit_cost = ((credit_cost * discount_multiplier) / 100)

///on post_load use our variables to change shuttle events
/datum/map_template/shuttle/emergency/post_load(obj/docking_port/mobile/mobile)
	. = ..()
	if(!events)
		return
	if(events_override)
		mobile.event_list.Cut()
	if(use_all_events)
		for(var/path in events)
			mobile.add_shuttle_event(path)
			events -= path
	else
		for(var/i in 1 to event_amount)
			var/path = pick_weight(events)
			events -= path
			mobile.add_shuttle_event(path)

/datum/map_template/shuttle/emergency/backup
	suffix = "backup"
	name = "Backup Shuttle"
	who_can_purchase = null

/datum/map_template/shuttle/emergency/box
	suffix = "box"
	name = "Standard Transfer Train"
	credit_cost = CARGO_CRATE_VALUE * 4
	description = "The gold standard in relocation."
	occupancy_limit = "30"

/datum/map_template/shuttle/emergency/loyalist
	suffix = "loyalist"
	name = "Loyalist Transfer Train"
	credit_cost = CARGO_CRATE_VALUE * 4
	description = "Seperated in two sections, this train lets loyalists transfer in comfort while all the undesirables rot."
	occupancy_limit = "20"

/datum/map_template/shuttle/emergency/razortrain
	suffix = "razortrain"
	name = "Razor Transfer Train"
	credit_cost = CARGO_CRATE_VALUE * 4
	description = "A borrowed military grade train from the Overwatch Transhuman Arm. Suitable for keeping all citizens seperated from one another, and for onsite stalkerizing."
	occupancy_limit = "25"


#undef EMAG_LOCKED_SHUTTLE_COST
