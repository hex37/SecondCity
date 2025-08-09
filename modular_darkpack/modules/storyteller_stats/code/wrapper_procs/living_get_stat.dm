/mob/living/proc/get_stat(stat, include_bonus = TRUE)
	if(!storyteller_stat_holder)
		return 0
	return storyteller_stat_holder.get_stat(stat, include_bonus)
