//Updates the circular suck bar that displays the amount of blood a victim has left.
/mob/living/carbon/human/proc/update_drinking_overlay(var/mob/living/mob)
	if(client)
		client.images -= suckbar
	qdel(suckbar)
	suckbar_loc = mob
	suckbar = image('modular_darkpack/modules/blood_drinking/icons/bloodcounter.dmi', suckbar_loc, "[round(14*(mob.bloodpool/mob.maxbloodpool))]", HUD_PLANE)
	suckbar.pixel_z = 40
	suckbar.plane = ABOVE_HUD_PLANE
	suckbar.appearance_flags = APPEARANCE_UI_IGNORE_ALPHA

	if(client)
		client.images += suckbar
	var/sound/heartbeat = sound('modular_darkpack/modules/blood_drinking/sounds/drinkblood2.ogg', repeat = TRUE)
	playsound_local(src, heartbeat, 75, 0, channel = CHANNEL_BLOOD, use_reverb = FALSE)
