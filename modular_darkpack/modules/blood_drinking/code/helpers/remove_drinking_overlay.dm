//Removes the circular suck bar that displays the amount of blood a victim has left.
/mob/living/carbon/human/proc/remove_drinking_overlay()
	stop_sound_channel(CHANNEL_BLOOD)
	last_drinkblood_use = 0
	if(client)
		client.images -= suckbar
	qdel(suckbar)
	return
