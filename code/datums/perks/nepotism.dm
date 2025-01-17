/datum/perk/nepotism
	name = "Nepotism"
	desc = "You earn about 30% higher pay than your fellow peers- The spirit of capitalism smiles upon you."
	gain_text = "You feel comforted, knowing the amount of money coming your way."
	icon_state = "nepotism"

/datum/perk/debtor
	name = "Debtor"
	desc = "You owe money to someone or something. Unfortunately, your wages have been garnished to make up the difference."
	gain_text = "You feel annoyed, thinking about how much of your wage is going into paying off your debt."
	icon_state = "robber_hand"

/datum/perk/splicer
	name = "Splicer"
	desc = "Your genes are heavily modified already, your base genetic instability is 20%, even if you don't have any mutations."
	gain_text = "Your body is modified enough already; pushing it further might be bad."
	icon_state = "splicer"

//Genetics is made reliably enough that simply increasing total instability, a dynamically changing value, will be permanent until removed.
/datum/perk/splicer/assign(mob/living/carbon/human/H)
	..()
	holder.unnatural_mutations.total_instability += 20

/datum/perk/splicer/remove()
	holder.unnatural_mutations.total_instability -= 20
	..()
