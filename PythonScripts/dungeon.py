#A simple transliteration from DMG p.122ff
#d% = [monster,number of,type of,fraction change for treasure,level modifier for treasure]
level_1 = {
    4: ["centipede (medium)","d3","critter",0.2,0],
    9: ["dire rat","d3+1","critter",0.2,0],
    14: ["fire beetle (giant)","d3+1","critter",0.2,0],
    17: ["scorpion (small)","d3","critter",0.2,0],
    20: ["spider (small)","d3","critter",0.2,0],
    25: ["dragon","1","dragon",0.8,2],
    30: ["dwarf warrior","d3","friend",0.8,1],
    35: ["elf warrior","d3","friend",0.8,1],
    40: ["CR1 NPC","1","NPC",1,0],
    45: ["darkmantle","1","terror",0.5,1],
    55: ["krenshar","1","terror",0.5,1],
    60: ["lemure (devil)","1","terror",0.5,1],
    65: ["goblin","d4+2","tough",0.8,1],
    70: [["hobgoblin","goblin"],["1","d3"],"tough",0.8,1],
    80: ["kobold","d6+3","tough",0.8,1],
    90: ["skeleton (medium)","d3+1","undead",0.5,0],
    100: ["zombie (medium)","d3","undead",0.5,0]
}
level_2 = {
    5: ["centipede (large)","d3","critter",0.2,0],
    10: ["giant ant","d3","critter",0.2,0],
    15: ["scorpion (medium)","d3","critter",0.2,0],
    20: ["spider (medium)","d3","critter",0.2,0],
    25: ["dragon","1","dragon",0.8,4],
    30: ["elf warrior","d4+2","friend",0.8,2],
    35: ["CR1 NPC","d3","NPC",1,0],
    37: ["choker","1","terror",0.2,0],
    42: ["ethereal marauder","1","terror",0.2,0],
    45: ["shrieker","d3","terror",0.2,0],
    50: ["formian worker","d4+2","terror",0.8,2],
    55: ["hobgoblin","d4+2","tough",0.8,2],
    60: [["hobgoblin","goblin"],["d3","d4+2"],"tough",0.8,2],
    70: ["lizardfolk","d3","tough",0.8,2],
    80: ["orc","d4+2","tough",0.8,2],
    90: ["zombie (medium)","d4+2","undead",0.5,0],
    100: ["ghoul","d3","undead",0.5,0]
}
level_3 = {
    2: ["bombardier beetle (giant)","d2","critter",0.2,0],
    4: ["centipede (huge)","d2","critter",0.2,0],
    6: ["dire badger","d2","critter",0.2,0],
    8: ["dire bat","d2","critter",0.2,0],
    11: ["gelatinous cube","1","critter",0.2,0],
    13: ["praying mantis (giant)","d2","critter",0.2,0],
    14: ["scorpion (large)","d2","critter",0.2,0],
    15: ["spider (large)","d2","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,4],
    25: ["imp (devil)","d2","fiend",0.8,3],
    30: [["wererat","dire rat"],["1","d3+1"],"fiend",0.8,3],
    35: ["dwarf warrior","d6+3","friend",0.8,3],
    40: ["CR1 NPC","d3+1","NPC",1,0],
    44: ["dretch (demon)","d2","terror",0.5,0],
    48: ["ethereal filcher","1","terror",0.5,0],
    52: ["phantom fungus","1","terror",0.2,0],
    56: ["thoqqua","d2","terror",0.2,0],
    60: ["vargouille","d2","terror",0.5,0],
    62: [["bugbear","goblin"],["1","d4+2"],"tough",0.8,3],
    67: ["gnoll","d3+1","tough",0.8,3],
    69: [["goblin","wolf"],["d4+2","d3"],"tough",0.8,3],
    71: [["hobgoblin","wolf"],["d3","d3"],"tough",0.8,3],
    75: [["kobold","dire weasel"],["d6+3","1"],"tough",0.8,3],
    80: ["troglodyte","d3+1","tough",0.8,3],
    90: ["shadow","1","undead",0.5,0],
    100: ["skeleton (large)","d3+1","undead",0.5,0]
}
level_4 = {
    4: ["ankheg","d2","critter",0.2,0],
    8: ["dire weasel","d3","critter",0.2,0],
    12: ["gray ooze","1","critter",0.2,0],
    15: ["snake (huge viper)","d2","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,4],
    23: [["formian warrior","formian worker"],["1","d3"],"fiend",0.8,3],
    26: [["imp","lemure (devil)"],["1","d3"],"fiend",0.8,3],
    30: ["quasit (demon)","d2","fiend",0.8,3],
    35: ["lantern archon (celestial)","d3","friend",0.5,2],
    40: ["CR2 NPC","d3","NPC",1,0],
    45: ["carrion crawler","1","terror",0.2,0],
    50: ["mimic","1","terror",0.5,0],
    55: ["rust monster","d2","terror",0.2,0],
    60: ["violet fungi","d2","terror",0.2,0],
    62: [["bugbear","hobgoblin"],["1","d6+3"],"tough",0.8,3],
    65: ["ettercap","1","tough",0.8,3],
    67: [["gnoll","hyena (as wolf)"],["d3","d3"],"tough",0.8,3],
    70: [["lizardfolk","giant lizard"],["d3","1"],"tough",0.8,3],
    73: ["magmin","d2","tough",0.8,3],
    76: [["ogre","orc"],["1","d4+2"],"tough",0.8,3],
    78: [["orc","dire boar"],["d3","d2"],"tough",0.8,3],
    80: [["worg","goblin"],["d2","d4+2"],"tough",0.8,3],
    85: ["allip","d2","undead",0.5,0],
    90: ["ghost (NPC level 1d3)","1","undead",0.5,0],
    95: ["vampire spawn","1","undead",0.5,0],
    100: ["wight","d2","undead",0.5,0]
}
level_5 = {
    2: [["giant soldier ant","giant worker ant"],["1","d4+2"],"critter",0.2,0],
    5: ["dire wolverine","d2","critter",0.2,0],
    9: ["ochre jelly","1","critter",0.2,0],
    11: ["snake (giant constrictor)","1","critter",0.2,0],
    12: ["spider (huge)","d2","critter",0.2,0],
    15: ["spider eater","1","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,4],
    23: ["doppelganger","d3","fiend",0.8,3],
    25: ["green hag","1","fiend",0.8,3],
    27: ["mephit","d3","fiend",0.8,3],
    30: ["wererat","d3+1","fiend",0.8,3],
    35: ["blink dog","d3+1","friend",0.5,2],
    40: ["CR2 NPC","d3+1","NPC",1,0],
    43: ["cockatrice","d3","terror",0.2,0],
    47: ["gibbering mouther","1","terror",0.2,0],
    50: ["grick","d3","terror",0.2,0],
    52: ["hydra d3+4 heads","1","terror",0.2,0],
    55: ["nightmare","1","terror",0.2,0],
    58: ["shocker lizard","d3+1","terror",0.2,0],
    60: [["violet fungus","shrieker"],["1","d3+1"],"terror",0.2,0],
    64: ["azer","d3+1","tough",0.8,3],
    67: ["bugbear","d3+1","tough",0.8,3],
    69: [["ettercap","spider (medium)"],["1","d3"],"tough",0.8,3],
    72: ["ogre","d3+1","tough",0.8,3],
    75: ["salamander (small)","d3+1","tough",0.8,3],
    77: [["troglodyte","giant lizard"],["d3+1","d2"],"tough",0.8,3],
    80: ["worg","d3+1","tough",0.8,3],
    85: [["ghast","ghoul"],["1","d3+1"],"undead",0.5,0],
    90: ["mummy","d3","undead",0.5,0],
    95: ["skeleton (huge)","d3+1","undead",0.5,0],
    100: ["wraith","1","undead",0.5,0]
}
level_6 = {
    2: ["digester","1","critter",0.2,0],
    4: ["dire ape","d3+1","critter",0.2,0],
    6: ["dire wolf","d3+1","critter",0.2,0],
    7: ["giant stag beetle","d3","critter",0.2,0],
    9: ["giant wasp","d3+1","critter",0.2,0],
    12: ["owlbear","d3","critter",0.2,0],
    15: ["shambling mound","1","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,4],
    22: ["annis (hag)","1","fiend",0.8,3],
    25: ["harpy","d3","fiend",0.8,3],
    26: [["quasit","dretch (demon)"],["1","d2"],"fiend",0.8,3],
    28: ["wereboar","d3+1","fiend",0.8,3],
    30: ["werewolf","d3+1","fiend",0.8,3],
    35: ["werebear","d2","friend",0.8,3],
    40: ["CR3 NPC","d3+1","NPC",1,0],
    43: ["arrowhawk (small)","d3+1","terror",0.2,0],
    46: ["basilisk","d2","terror",0.2,0],
    50: ["displacer beast","d3","terror",0.2,0],
    53: ["gargoyle","d3","terror",0.5,0],
    56: ["hell hound","d3+1","terror",0.2,0],
    59: ["howler","d3+1","terror",0.2,0],
    62: ["otyugh","d3","terror",0.2,0],
    65: [["ravid","animated object (large)"],["1","1"],"terror",0.2,0],
    67: ["xorn (small)(d6 gems each)","d3+1","terror",0.2,0],
    70: ["yeth hounds","d3+1","terror",0.2,0],
    77: [["ettin","orc"],["1","d6+3"],"tough",0.8,3],
    82: [["ogre","boar"],["d3","d3"],"tough",0.8,3],
    90: ["weretiger","d2","tough",0.8,3],
    100: ["zombie (huge)","d3+1","undead",0.5,0]
}
level_7 = {
    4: ["black pudding","1","critter",0.2,0],
    5: ["centipede (gargantuan)","d2","critter",0.2,0],
    8: ["criosphinx","1","critter",0.2,0],
    10: ["dire boar","d3+1","critter",0.2,0],
    14: ["remorhaz","1","critter",0.2,0],
    15: ["scorpion (huge)","d2","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,4],
    22: ["aranea","d3+1","fiend",0.8,3],
    24: ["barghest (medium)","d3+1","fiend",0.8,3],
    26: ["djinn","d3","fiend",0.8,3],
    28: [["formian taskmaster","minotaur"],["1","1"],"fiend",0.8,3],
    30: ["jann (genie)","d3+1","fiend",0.8,3],
    35: ["hound archon","d3+1","friend",0.8,3],
    40: ["CR4 NPC","d3+1","NPC",1,0],
    45: ["cloaker","d3","terror",0.2,0],
    48: ["cryohydra (d3+4 heads)","1","terror",0.2,0],
    52: ["formian warrior","d4+2","terror",0.8,3],
    57: ["invisible stalker","1","terror",0.2,0],
    60: ["pyrohydra (d3+4 heads)","1","terror",0.2,0],
    65: [["bugbear","wolf"],["d3+1","d3+1"],"tough",0.8,3],
    70: [["ettin","brown bear"],["1","d2"],"tough",0.8,3],
    75: ["minotaur","d3+1","tough",0.5,0],
    80: [["salamander (medium)","salamander (small)"],["1","d3+1"],"tough",0.8,3],
    90: ["ghost [NPC level d3+3]","1","undead",0.5,0],
    100: ["vampire [NPC level d2+4]","1","undead",1,0]
}
level_8 = {
    3: ["giant soldier ant","d6+5","critter",0.2,0],
    8: ["dire bat","d6+5","critter",0.2,0],
    10: ["spider (gargantuan)","d2","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,4],
    22: [["aboleth","skum"],["1","d3+1"],"fiend",0.8,3],
    24: ["barghest (large)","d3+1","fiend",0.8,3],
    26: ["erinye (devil)","d2","fiend",0.8,3],
    28: [["medusa","grimlock"],["1","d6+3"],"fiend",0.8,3],
    30: ["mind flayer","1","fiend",0.8,3],
    33: ["ogre mage","1","fiend",0.8,3],
    35: [["yuan-ti halfblood","yuan-ti pureblood"],["1","d3"],"fiend",0.8,3],
    40: ["lammasu","1","friend",0.8,3],
    45: ["CR5 NPC","d3+1","NPC",1,0],
    47: ["achaierai","d3+1","terror",0.2,0],
    48: ["arrowhawk (medium)","d3+1","terror",0.2,0],
    50: ["girallon","d3+1","terror",0.2,0],
    52: ["flesh golem","d2","terror",0.2,0],
    54: ["gray render","1","terror",0.2,0],
    56: ["hieracosphinx","d3+1","terror",0.2,0],
    59: ["hydra (d3+7 heads)","1","terror",0.2,0],
    60: ["lernaean hydra (d3+4 heads)","1","terror",0.2,0],
    62: ["phase spider","d3+1","terror",0.2,0],
    64: ["rast","d3+1","terror",0.2,0],
    66: ["shadow mastiff","d3+1","terror",0.2,0],
    68: ["winter wolf","d3+1","terror",0.2,0],
    70: ["xorn (medium)(2d6 gems each)","d3","terror",0.2,0],
    74: [["drider","large monstrous spider"],["1","d3+1"],"tough",0.8,2],
    78: ["ettin","d3+1","tough",0.8,2],
    82: ["manticore","d3+1","tough",0.8,2],
    86: ["salamander (medium)","d3+1","tough",0.8,2],
    90: ["troll","d3+1","tough",0.8,2],
    100: ["spectre","d2","undead",0.5,0]
}
level_9 = {
    5: ["bulette","d3","critter",0.2,0],
    10: ["dire lion","d4+2","critter",0.2,0],
    20: ["dragon","1","dragon",0.8,3],
    21: ["bebilith (demon)","1","fiend",0.8,2],
    22: ["lamia","d3+1","fiend",0.8,2],
    24: [["mind flayer","charmed creatures, roll Table4-20"],["1","1"],"fiend",0.8,2],
    26: ["night hag","1","fiend",0.8,2],
    28: [["ogre mage","ogre"],["1","d4+2"],"fiend",0.8,2],
    30: ["rakshasa","1","fiend",0.8,2],
    32: ["succubus","1","fiend",0.8,2],
    34: ["xill (barbaric 00-50, civilized 51-100)","d3+1","fiend",0.8,2],
    35: [["yuan-ti abomination","yuan-ti pureblood (00-50) or halfblood (51-100)"],["1","d3"],"fiend",0.8,2],
    40: ["androsphinx","1","friend",0.8,2],
    45: ["CR6 NPC","d3+1","NPC",1,0],
    47: ["behir","d2","terror",0.2,0],
    49: ["belker","d3+1","terror",0.2,0],
    50: ["cryohydra (d3+6 heads)","1","terror",0.2,0],
    52: ["delver","1","terror",0.2,0],
    54: ["dragon turtle","1","terror",0.2,0],
    55: ["pyrohydra (d3+6 heads)","1","terror",0.2,0],
    57: ["will-o-wisp","d3+1","terror",0.2,0],
    60: ["wyvern","d3+1","terror",0.2,0],
    64: [["barbazu (devil)","osyluth"],["1","d2"],"tough",0.8,2],
    68: [["hill giant","dire wolf"],["1","d3"],"tough",0.8,2],
    72: ["kyton (devil)","d3+1","tough",0.8,2],
    76: ["osyluth (devil)","d3+1","tough",0.8,2],
    80: [["troll","dire boar"],["d3+1","d3"],"tough",0.8,2],
    90: ["bodak","d2","undead",0.5,0],
    100: ["vampire [NPC level d2+6]","1","undead",1,0]
}
level_10 = {
    5: ["dire bear","d3+1","critter",0.2,0],
    15: ["dragon","1","dragon",0.8,3],
    17: ["aboleth","d3+1","fiend",0.8,2],
    19: ["athach","d3+1","fiend",0.8,2],
    21: ["formian myrmarch","1","fiend",0.8,2],
    24: ["medusa","d3+1","fiend",0.8,2],
    26: ["water naga","d3+1","fiend",0.8,2],
    28: [["night hag","nightmare"],["1","1"],"fiend",0.8,2],
    30: [["salamander (large)","salamander (medium)"],["1","d3"],"fiend",0.8,2],
    32: ["yuan-ti abomination","d3+1","fiend",0.8,2],
    37: ["lillend","d3+1","friend",0.8,2],
    47: ["CR7 NPC","d3+1","NPC",1,0],
    49: ["chaos beast","d3+1","terror",0.2,0],
    51: ["chimera","d3+1","terror",0.2,0],
    53: ["chuul","d3+1","terror",0.2,0],
    54: ["lernaean cryohydra (d4+4 heads)","1","terror",0.2,0],
    56: ["dragonne","d3+1","terror",0.2,0],
    58: ["hellcat (devil)","d3+1","terror",0.2,0],
    59: ["hydra (d3+9 heads)","1","terror",0.2,0],
    60: ["phasm","1","terror",0.2,0],
    61: ["lernaean pyrohydra (d4+4 heads)","1","terror",0.2,0],
    63: ["retriever (demon)","1","terror",0.2,0],
    65: ["red slaadi","d3+1","terror",0.8,2],
    67: ["umber hulk","d3+1","terror",0.2,0],
    71: ["barbazu (devil)","d3+1","tough",0.8,2],
    75: ["drider","d3+1","tough",0.8,2],
    79: [["frost giant","winter wolf"],["1","d3"],"tough",0.8,2],
    83: [["stone giant","dire bear"],["1","d2"],"tough",0.8,2],
    87: ["hill giant","d3+1","tough",0.8,2],
    90: [["hamatula (devil)","barbazu (devil)"],["1","d2"],"tough",0.8,2],
    100: ["ghost [NPC level d3+6]","1","undead",0.5,0]
}
level_11 = {
    5: ["dire tiger","d3","critter",0.2,0],
    15: ["dragon","1","dragon",0.8,3],
    18: ["hag covey (see p124)","1","fiend",0.8,1],
    21: ["efreet","d3+1","fiend",0.8,1],
    24: [["formian myrmarch","formian warrior"],["1","d6+3"],"fiend",0.8,1],
    27: ["gynosphinx","d3+1","fiend",0.8,1],
    30: ["dark naga","d3+1","fiend",0.8,1],
    35: ["avoral guardinal (celestial)","d3","friend",0.8,1],
    45: ["CR8 NPC","d3+1","NPC",1,0],
    48: ["arrowhawk (large)","d3","terror",0.2,0],
    51: ["destrachan","d3","terror",0.2,0],
    54: ["clay golem","d2","terror",0.2,0],
    57: ["gorgon","d3+1","terror",0.2,0],
    59: ["lernaean hydra (d3+7 heads)","1","terror",0.2,0],
    62: ["blue slaadi","d3+1","terror",0.8,1],
    65: ["xorn (large)(4d6 gems each)","d3+1","terror",0.2,0],
    70: [["fire giant","hell hound"],["1","d6+3"],"tough",0.8,1],
    75: ["stone giant","d3+1","tough",0.8,1],
    80: ["hamatula (devil)","d3+1","tough",0.8,1],
    90: ["devourer","1","undead",0.5,0],
    100: ["mohrg","d3+1","undead",0.5,0]
}
level_12 = {
    4: ["purple worm","1","critter",0.2,0],
    5: ["scorpion (colossal)","d2","critter",0.2,0],
    15: ["dragon","1","dragon",0.8,3],
    20: ["mind flayer [inquisition]","d4+2","fiend",0.5,1],
    25: ["spirit naga","d3+1","fiend",0.5,1],
    30: ["green slaad","d3+1","fiend",0.5,1],
    35: [["cloud giant","dire lion"],["1","d4+2"],"friend",0.5,1],
    50: ["CR9 NPC","d3+1","NPC",1,0],
    55: ["cryohydra (d3+9 heads)","1","terror",0.2,0],
    60: ["stone golem","d2","terror",0.2,0],
    65: ["pyrohydra (d3+9 heads)","1","terror",0.2,0],
    70: ["yrthak","d3+1","terror",0.2,0],
    75: [["cornugon (devil)","hamatula (devil)"],["1","d3"],"tough",0.5,1],
    80: [["cloud giant","dire lion"],["1","d4+2"],"tough",0.5,1],
    85: ["frost giant","d3+1","tough",0.5,1],
    90: ["salamander (large)","d3+1","tough",0.5,1],
    100: ["vampire [NPC level d3+8]","1","undead",1,0]
}
level_13 = {
    15: ["dragon","1","dragon",0.8,3],
    20: ["beholder","1","fiend",0.5,1],
    30: [["night hag","nightmare"],["3","3"],"fiend",0.5,1], #need to edit dieRoll 
    35: ["gray slaad","d3+1","fiend",0.5,1],
    40: ["couatl","d3+1","friend",0.5,1],
    45: ["guardian naga","d3+1","friend",0.5,1],
    60: ["CR10 NPC","d3+1","NPC",1,0],
    67: ["frost worm","d2","terror",0.2,0],
    73: ["lernaean hydra (d3+9 heads)","1","terror",0.2,0],
    80: ["roper","d3+1","terror",0.2,0],
    90: ["cornugon (devil)","d3+1","tough",0.5,1],
    100: ["ghost [NPC level d3+9]","1","undead",0.5,1]
}
level_14 = {
    15: ["dragon","1","dragon",0.8,2],
    25: [["beholder","charmed creatures, roll Table4-25"],["1","1"],"fiend",0.5,1],
    35: ["death slaad","d2","fiend",0.5,1],
    40: ["cloud giant","d3+1","friend",0.5,1],
    55: ["CR11 NPC","d3+1","NPC",1,0],
    60: ["lernaean cryohydra (d4+8 heads)","1","terror",0.2,0],
    65: ["iron golem","d2","terror",0.5,0],
    70: ["lernaean pyrohydra (d4+8 heads)","1","terror",0.2,0],
    80: ["cloud giant","d3+1","tough",0.5,1],
    90: [["storm giant","griffon"],["1","d4+2"],"tough",0.5,1],
    100: ["lich [NPC level d3+10]","1","undead",1,0]
}
level_15 = {
    15: ["dragon","1","dragon",0.8,1],
    30: ["beholder","d3","fiend",0.5,0],
    40: [["death slaad","green slaad"],["d2","d3+1"],"fiend",0.5,0],
    45: ["ghaele (celestial)","d3","friend",0.8,0],
    70: ["CR12 NPC","d3+1","NPC",1,0],
    80: ["hezrou (demon)","d2","tough",0.5,0],
    90: [["gelugon (devil)","cornugon (devil)"],["1","d3+1"],"tough",0.5,0],
    100: ["vampire [NPC level d3+11]","1","undead",1,0]
}
level_16 = {
    20: ["dragon","1","dragon",0.8,1],
    30: ["pit fiend (devil)","1","fiend",0.5,1],
    35: ["astral deva (celestial)","d3","friend",0.5,1],
    60: ["CR13 NPC","d3+1","NPC",1,0],
    70: ["gelugon (devil)","d3+1","tough",0.5,0],
    80: ["storm giant","d3+1","tough",0.5,0],
    90: ["vrock (demon)","d3+1","tough",0.5,0],
    100: ["ghost [NPC level d3+12]","1","undead",0.2,0]
}
level_17 = {
    20: ["dragon","1","dragon",0.8,1],
    30: ["marilith (demon)","1","fiend",0.5,0],
    35: ["trumpet archon (celestial)","d3+1","friend",0.5,0],
    60: ["CR14 NPC","d3+1","NPC",1,0],
    70: ["glabrezu (demon)","d3","tough",0.5,0],
    80: ["hezrou (demon)","d3+1","tough",0.5,0],
    90: ["lich [NPC level d3+13]","1","undead",1,0],
    100: ["nightwing (nightshade)","d3+1","undead",0.2,0]
}
level_18 = {
    20: ["dragon","1","dragon",0.8,1],
    30: ["balor (demon)","d3","fiend",0.5,0],
    40: [["pit fiend (devil)","gelugon (devil)"],["1","d3+1"],"fiend",0.5,0],
    45: ["planetar (celestial)","d3","friend",0.5,0],
    70: ["CR15 NPC","d3+1","NPC",1,0],
    80: ["glabrezu (demon)","d3+1","tough",0.5,0],
    90: ["vampire [NPC level d3+14]","1","undead",1,0],
    100: ["nightwalker (nightshade)","d3+1","undead",0.2,0]
}
level_19 = {
    20: ["dragon","1","dragon",0.8,1],
    30: [["marilith (demon)","glabrezu (demon)"],["1","d3"],"fiend",0.5,1],
    40: ["pit fiend (devil)","d3+1","fiend",0.5,1],
    45: ["solar (celestial)","1","friend",0.5,1],
    70: ["CR16 NPC","d3+1","NPC",1,0],
    80: ["nalfeshnee (demon)","d3+1","tough",0.5,1],
    90: ["ghost [NPC level d3+15]","1","undead",0.2,0],
    100: ["nightcrawler (nightshade)","d3","undead",0.2,0]
}
level_20 = {
    20: ["dragon","1","dragon",0.8,1],
    30: ["balor (demon)","d3","fiend",0.5,0],
    40: ["marilith (demon)","d3+1","fiend",0.5,0],
    45: [["solar (celestial)","planetar (celestial)"],["1","d2"],"friend",0.5,0],
    55: ["CR17 NPC","d3+1","NPC",1,0],
    60: ["CR18 NPC","d3","NPC",1,0],
    65: ["CR19 NPC","d2","NPC",1,0],
    70: ["CR20 NPC","1","NPC",1,0],
    80: [["nalfeshnee (demon)","hezrou (demon)"],["d3+1","d3+1"],"tough",0.2,0],
    85: ["ghost [NPC level d2+18]","1","undead",0.2,0],
    90: ["lich [NPC level d4+16]","1","undead",1,0],
    95: ["nightcrawler (nightshade)","d3","undead",0.2,0],
    100: ["vampire [NPC level d3+17]","1","undead",1,0]
}

master_table = {
    # actual_level: d%: [adjusted_level,monsterDiceModifier]
    "lvl1": {
        5: [1,1],	10: [1,1],
        20: [1,1],	30: [1,1],
        70: [1,1],	80: [2,0.5],
        90: [2,0.5],	100: [3,0.3]
    },
    "lvl2": {
        5: [1,2],	10: [1,2],
        20: [1,2],	30: [2,1],
        70: [2,1],	80: [3,0.7],
        90: [4,0.5],	100: [5,0.3]
    },
    "lvl3": {
        5: [1,3],	10: [1,3],
        20: [2,1.5],	30: [2,1.5],
        70: [3,1],	80: [4,0.7],
        90: [5,0.5],	100: [6,0.3]
    },
    "lvl4": {
        5: [1,4],	10: [1,4],
        20: [2,2],	30: [3,1.5],
        70: [4,1],	80: [5,0.7],
        90: [6,0.5],	100: [7,0.3]
    },
    "lvl5": {
        5: [2,4],	10: [2,3],
        20: [3,2],	30: [4,1.5],
        70: [5,1],	80: [6,0.7],
        90: [7,0.5],	100: [8,0.3]
    },
    "lvl6": {
        5: [2,4],	10: [3,3],
        20: [4,2],	30: [5,1.5],
        70: [6,1],	80: [7,0.7],
        90: [8,0.5],	100: [9,0.3]
    },
    "lvl7": {
        5: [3,4],	10: [4,3],
        20: [5,2],	30: [6,1.5],
        70: [7,1],	80: [8,0.7],
        90: [9,0.5],	100: [10,0.3]
    },
    "lvl8": {
        5: [4,4],	10: [5,3],
        20: [6,2],	30: [7,1.5],
        70: [8,1],	80: [9,0.7],
        90: [10,0.5],	100: [11,0.3]
    },
    "lvl9": {
        5: [5,4],	10: [6,3],
        20: [7,2],	30: [8,1.5],
        70: [9,1],	80: [10,0.7],
        90: [11,0.5],	100: [12,0.3]
    },
    "lvl10": {
        5: [6,4],	10: [7,3],
        20: [8,2],	30: [9,1.5],
        70: [10,1],	80: [11,0.7],
        90: [12,0.5],	100: [13,0.3]
    },
    "lvl11": {
        5: [7,4],	10: [8,3],
        20: [9,2],	30: [10,1.5],
        70: [11,1],	80: [12,0.7],
        90: [13,0.5],	100: [14,0.3]
    },
    "lvl12": {
        5: [8,4],	10: [9,3],
        20: [10,2],	30: [10,1.5],
        70: [12,1],	80: [12,0.7],
        90: [14,0.5],	100: [14,0.3]
    },
    "lvl13": {
        5: [9,4],	10: [10,3],
        20: [11,2],	30: [12,1.5],
        70: [13,1],	80: [14,0.7],
        90: [15,0.5],	100: [16,0.3]
    },
    "lvl14": {
        5: [10,4],	10: [11,3],
        20: [12,2],	30: [13,1.5],
        70: [14,1],	80: [15,0.7],
        90: [16,0.5],	100: [17,0.3]
    },
    "lvl15": {
        5: [11,4],	10: [12,3],
        20: [13,2],	30: [14,1.5],
        70: [15,1],	80: [16,0.7],
        90: [17,0.5],	100: [18,0.3]
    },
    "lvl16": {
        5: [12,4],	10: [13,3],
        20: [14,2],	30: [15,1.5],
        70: [16,1],	80: [17,0.7],
        90: [18,0.5],	100: [19,0.3]
    },
    "lvl17": {
        5: [13,4],	10: [14,3],
        20: [15,2],	30: [16,1.5],
        70: [17,1],	80: [18,0.7],
        90: [19,0.5],	100: [20,0.3]
    },
    "lvl18": {
        5: [14,4],	10: [15,3],
        20: [16,2],	30: [17,1.5],
        70: [18,1],	80: [19,0.7],
        90: [20,0.5],	100: [20,0.5]
    },
    "lvl19": {
        5: [15,4],	10: [16,3],
        20: [17,2],	30: [18,1.5],
        70: [19,1],	80: [19,1],
        90: [20,0.7],	100: [20,0.7]
    },
    "lvl20": {
        5: [16,4],	10: [17,3],
        20: [18,2],	30: [19,1.5],
        70: [20,1],	80: [20,1],
        90: [20,1],	100: [20,1]
    }
}