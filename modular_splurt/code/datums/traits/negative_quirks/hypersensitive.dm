/datum/quirk/hypersensitive
	name = "Hypersensitive"
	desc = "For better or worse, everything seems to affect your mood more than it should."
	value = -1
	gain_text = span_danger("You seem to make a big deal out of everything.")
	lose_text = span_notice("You don't seem to make a big deal out of everything anymore.")
	mood_quirk = TRUE //yogs
	medical_record_text = "Patient demonstrates a high level of emotional volatility."

/datum/quirk/hypersensitive/add()
	var/datum/component/mood/mood = quirk_holder.GetComponent(/datum/component/mood)
	if(mood)
		mood.mood_modifier += 0.5

/datum/quirk/hypersensitive/remove()
	if(!quirk_holder)
		return
	var/datum/component/mood/mood = quirk_holder.GetComponent(/datum/component/mood)
	if(mood)
		mood.mood_modifier -= 0.5
