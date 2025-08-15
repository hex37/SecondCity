/datum/preference/numeric/generation
	category = PREFERENCE_CATEGORY_SECONDARY_FEATURES
	savefile_key = "immortal_age"
	savefile_identifier = PREFERENCE_CHARACTER
	priority = PREFERENCE_PRIORITY_TABLETOP
	minimum = 7
	maximum = 13

/datum/preference/numeric/generation/apply_to_human(mob/living/carbon/human/target, value)
	target.generation = value
