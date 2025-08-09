/mob/living/proc/add_stat_mod(trait, amount, source)
	if(!storyteller_stat_holder)
		return
	storyteller_stat_holder.add_stat_mod(trait, amount, source)
