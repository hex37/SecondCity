/mob/living/proc/remove_stat_mod(trait, source)
	if(!storyteller_stat_holder)
		return
	storyteller_stat_holder.remove_stat_mod(trait, source)
