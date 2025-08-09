/mob/living/carbon/human/proc/update_max_health()
	maxHealth = round((src::maxHealth + src::maxHealth/8 * st_get_stat(STAT_STAMINA, FALSE)))
	health = maxHealth
