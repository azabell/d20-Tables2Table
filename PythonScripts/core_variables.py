import random
import re

def d(die_type):
    return random.randint(1, die_type)

def dieRoll(nDIEmPLUSc):
    just_the_numbers = re.split('d|\+|\-', nDIEmPLUSc)
    if len(just_the_numbers) == 1:
        return int(just_the_numbers[-1])
    number_of_dice = 1 if just_the_numbers[0] == "" else int(just_the_numbers[0])
    die_type = int(just_the_numbers[1])
    constant_expression = 0 if len(just_the_numbers) == 2 else int(just_the_numbers[2])
    rolling_count = -constant_expression if '-' in nDIEmPLUSc else constant_expression
    for n in range(0, number_of_dice):
        rolling_count += d(die_type)
    return rolling_count

def randToKey(the_hash, the_roll):
    return [the_key for the_key in sorted(the_hash.keys()) if the_key >= the_roll][0]

def randToValue(the_hash, the_roll):
    return [the_hash[the_key] for the_key in sorted(the_hash.keys()) if the_key >= the_roll][0]