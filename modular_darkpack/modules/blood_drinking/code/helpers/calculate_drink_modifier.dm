//Here is where you handle any circumstantial modifiers to bloodpool gains
//VTR has a lot of these.
/mob/living/carbon/human/proc/calculate_drink_modifier(var/mob/living/mob)
	var/drink_mod = 1
	if(HAS_TRAIT(src, TRAIT_HUNGRY))
		drink_mod *= 0.5

	return drink_mod
