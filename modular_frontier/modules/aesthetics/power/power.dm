/obj/machinery/power/smes
	icon = 'modular_frontier/modules/aesthetics/power/power.dmi'

/obj/item/stock_parts/cell
	icon = 'modular_frontier/modules/aesthetics/power/power.dmi'

/obj/item/stock_parts/cell/update_overlays()
	. = ..()
	if(grown_battery)
		. += mutable_appearance('icons/obj/power.dmi', "grown_wires")
	if(charge < 0.01)
		return
	else if(charge/maxcharge >=0.995)
		. += mutable_appearance('modular_frontier/modules/aesthetics/power/power.dmi', "cell-o2")
	else
		. += mutable_appearance('modular_frontier/modules/aesthetics/power/power.dmi', "cell-o1")

/obj/machinery/cell_charger
	icon = 'modular_frontier/modules/aesthetics/power/power.dmi'
