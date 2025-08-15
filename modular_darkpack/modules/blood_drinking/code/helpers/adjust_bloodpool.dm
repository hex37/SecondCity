//Wrapper function for adjusting a kindred/ghoul's blood pool
/mob/living/proc/adjustBloodPool(blood_delta, on_spawn = FALSE)
	if(on_spawn)
		bloodpool=0
	bloodpool = clamp(bloodpool+blood_delta, 0, maxbloodpool)
