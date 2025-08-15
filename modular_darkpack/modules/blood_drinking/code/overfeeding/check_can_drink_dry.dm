/mob/living/carbon/human/proc/check_can_drink_dry(var/mob/living/mob)
	if(!iskindred(mob) || !iskindred(src))
		return TRUE

	if(!mob.client)
		to_chat(src, "<span class='warning'>You need [mob]'s attention to do that...</span>")
		return FALSE

	message_admins("[ADMIN_LOOKUPFLW(src)] is attempting to Diablerize [ADMIN_LOOKUPFLW(mob)]")
	log_attack("[key_name(src)] is attempting to Diablerize [key_name(mob)].")

	if(!GLOB.canon_event)
		to_chat(src, "<span class='warning'>It's not a canon event!</span>")
		return FALSE

	to_chat(src, "<span class='userdanger'><b>YOU TRY TO COMMIT DIABLERIE ON [mob].</b></span>")
	return TRUE
