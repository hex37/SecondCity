/mob/living/carbon/human/proc/add_bite_animation()
	remove_overlay(HALO_LAYER)
	var/mutable_appearance/bite_overlay = mutable_appearance('modular_darkpack/modules/deprecated/icons/icons.dmi', "bite", -HALO_LAYER)
	overlays_standing[HALO_LAYER] = bite_overlay
	apply_overlay(HALO_LAYER)
	spawn(15)
		if(src)
			remove_overlay(HALO_LAYER)
