/obj/machinery/sealer
	name = "sealing machine"
	desc = "An industrial piece of machinery for sealing packages and goods easier and quicker than by hand."
	icon = 'hl13/icons/obj/machinery.dmi'
	icon_state = "sealer"

/obj/machinery/sealer/examine(mob/user)
	. = ..()
	. += span_notice("You can hit it with something that needs sealing, like a ration refill container, to seal it quickly.")

/obj/machinery/sealer/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/ration_construction/container))
		var/obj/item/ration_construction/container/C = I
		if(C.filled == TRUE && C.completed == FALSE)
			to_chat(usr, span_notice("Sealing box..."))
			if(do_after(user, 1 SECONDS, src))
				to_chat(usr, span_notice("Container succesfully sealed. Reward dispensed."))
				C.seal(user, 3) //Using the sealer gets you bonus money
		else if(C.completed)
			to_chat(usr, span_notice("This ration container is already sealed."))
		else
			to_chat(usr, span_notice("This ration container is not yet filled."))
