/mob/living/carbon/human/proc/adjust_generation(mob/living/carbon/human/victim)
	var/new_generation = generation
	if(victim.generation < generation)
		new_generation = max(generation - 1, 7)
	generation = new_generation
	client.prefs.write_preference(GLOB.preference_entries[/datum/preference/numeric/generation], new_generation)
