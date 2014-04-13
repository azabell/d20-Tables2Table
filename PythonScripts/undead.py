from core_variables import *

def npc(description):
	parse_die_roll = description.replace("]","").split(" ")[-1]
	return dieRoll(parse_die_roll)

def lich_class():
	lich_hash = {10: "cleric", 40: "sorcerer", 100: "wizard"}
	return randToValue(lich_hash,d(100))