/datum/event/shipping_error/start()
	var/datum/supply_order/O = new /datum/supply_order()
	O.ordernum = SSsupply.ordernum
	O.object = pick(SSsupply.master_supply_list)
	O.orderedby = random_name(pick(MALE,FEMALE), species = GLOB.using_map.default_species)
	SSsupply.shoppinglist += O
