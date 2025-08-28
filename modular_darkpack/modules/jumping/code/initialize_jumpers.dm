//Initializes Jumping on the player
/mob/living/carbon/human/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/jumper)
