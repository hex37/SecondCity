/mob/living/proc/get_stat_datum(trait)
	RETURN_TYPE(/datum/st_stat)
	if(!storyteller_stat_holder)
		return null
	return storyteller_stat_holder.get_stat_datum(trait)
