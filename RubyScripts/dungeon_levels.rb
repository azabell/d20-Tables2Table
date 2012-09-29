class Dungeon
#A simple transliteration from DMG p.122ff
#d% = monster,number of,type of,treasure%,treasure level mod
	attr_accessor :effective_level
	def initialize (word_and_digit)
		@effective_level = eval(word_and_digit)
	end

	def level_1
		@level_1 = Hash[
	4 => ["centipede (medium)","d3","critter",0.2,0],
	9 => ["dire rat","d3+1","critter",0.2,0],
	14 => ["fire beetle (giant)","d3+1","critter",0.2,0],
	17 => ["scorpion (small)","d3","critter",0.2,0],
	20 => ["spider (small)","d3","critter",0.2,0],
	25 => ["dragon","1","dragon",0.8,2],
	30 => ["dwarf warrior","d3","friend",0.8,1],
	35 => ["elf warrior","d3","friend",0.8,1],
	40 => ["CR1 NPC","1","NPC",1,0],
	45 => ["darkmantle","1","terror",0.5,1],
	55 => ["krenshar","1","terror",0.5,1],
	60 => ["lemure (devil)","1","terror",0.5,1],
	65 => ["goblin","d4+2","tough",0.8,1],
	70 => [["hobgoblin","goblin"],["1","d3"],"tough",0.8,1],
	80 => ["kobold","d6+3","tough",0.8,1],
	90 => ["skeleton (medium)","d3+1","undead",0.5,0],
	100 => ["zombie (medium)","d3","undead",0.5,0]
		]
	end
	def level_2
		@level_2 = Hash[
	5 => ["centipede (large)","d3","critter",0.2,0],
	10 => ["giant ant","d3","critter",0.2,0],
	15 => ["scorpion (medium)","d3","critter",0.2,0],
	20 => ["spider (medium)","d3","critter",0.2,0],
	25 => ["dragon","1","dragon",0.8,4],
	30 => ["elf warrior","d4+2","friend",0.8,2],
	35 => ["CR1 NPC","d3","NPC",1,0],
	37 => ["choker","1","terror",0.2,0],
	42 => ["ethereal marauder","1","terror",0.2,0],
	45 => ["shrieker","d3","terror",0.2,0],
	50 => ["formian worker","d4+2","terror",0.8,2],
	55 => ["hobgoblin","d4+2","tough",0.8,2],
	60 => [["hobgoblin","goblin"],["d3","d4+2"],"tough",0.8,2],
	70 => ["lizardfolk","d3","tough",0.8,2],
	80 => ["orc","d4+2","tough",0.8,2],
	90 => ["zombie (medium)","d4+2","undead",0.5,0],
	100 => ["ghoul","d3","undead",0.5,0]
		]
	end
	def level_3
		@level_3 = Hash[
	2 => ["bombardier beetle (giant)","d2","critter",0.2,0],
	4 => ["centipede (huge)","d2","critter",0.2,0],
	6 => ["dire badger","d2","critter",0.2,0],
	8 => ["dire bat","d2","critter",0.2,0],
	11 => ["gelatinous cube","1","critter",0.2,0],
	13 => ["praying mantis (giant)","d2","critter",0.2,0],
	14 => ["scorpion (large)","d2","critter",0.2,0],
	15 => ["spider (large)","d2","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,4],
	25 => ["imp (devil)","d2","fiend",0.8,3],
	30 => [["wererat","dire rat"],["1","d3+1"],"fiend",0.8,3],
	35 => ["dwarf warrior","d6+3","friend",0.8,3],
	40 => ["CR1 NPC","d3+1","NPC",1,0],
	44 => ["dretch (demon)","d2","terror",0.5,0],
	48 => ["ethereal filcher","1","terror",0.5,0],
	52 => ["phantom fungus","1","terror",0.2,0],
	56 => ["thoqqua","d2","terror",0.2,0],
	60 => ["vargouille","d2","terror",0.5,0],
	62 => [["bugbear","goblin"],["1","d4+2"],"tough",0.8,3],
	67 => ["gnoll","d3+1","tough",0.8,3],
	69 => [["goblin","wolf"],["d4+2","d3"],"tough",0.8,3],
	71 => [["hobgoblin","wolf"],["d3","d3"],"tough",0.8,3],
	75 => [["kobold","dire weasel"],["d6+3","1"],"tough",0.8,3],
	80 => ["troglodyte","d3+1","tough",0.8,3],
	90 => ["shadow","1","undead",0.5,0],
	100 => ["skeleton (large)","d3+1","undead",0.5,0]
		]
	end
	def level_4
		@level_4 = Hash[
	4 => ["ankheg","d2","critter",0.2,0],
	8 => ["dire weasel","d3","critter",0.2,0],
	12 => ["gray ooze","1","critter",0.2,0],
	15 => ["snake (huge viper)","d2","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,4],
	23 => [["formian warrior","formian worker"],["1","d3"],"fiend",0.8,3],
	26 => [["imp","lemure (devil)"],["1","d3"],"fiend",0.8,3],
	30 => ["quasit (demon)","d2","fiend",0.8,3],
	35 => ["lantern archon (celestial)","d3","friend",0.5,2],
	40 => ["CR2 NPC","d3","NPC",1,0],
	45 => ["carrion crawler","1","terror",0.2,0],
	50 => ["mimic","1","terror",0.5,0],
	55 => ["rust monster","d2","terror",0.2,0],
	60 => ["violet fungi","d2","terror",0.2,0],
	62 => [["bugbear","hobgoblin"],["1","d6+3"],"tough",0.8,3],
	65 => ["ettercap","1","tough",0.8,3],
	67 => [["gnoll","hyena (as wolf)"],["d3","d3"],"tough",0.8,3],
	70 => [["lizardfolk","giant lizard"],["d3","1"],"tough",0.8,3],
	73 => ["magmin","d2","tough",0.8,3],
	76 => [["ogre","orc"],["1","d4+2"],"tough",0.8,3],
	78 => [["orc","dire boar"],["d3","d2"],"tough",0.8,3],
	80 => [["worg","goblin"],["d2","d4+2"],"tough",0.8,3],
	85 => ["allip","d2","undead",0.5,0],
	90 => ["ghost (NPC level 1d3)","1","undead",0.5,0],
	95 => ["vampire spawn","1","undead",0.5,0],
	100 => ["wight","d2","undead",0.5,0]
		]
	end
	def level_5
		@level_5 = Hash[
	2 => [["giant soldier ant","giant worker ant"],["1","d4+2"],"critter",0.2,0],
	5 => ["dire wolverine","d2","critter",0.2,0],
	9 => ["ochre jelly","1","critter",0.2,0],
	11 => ["snake (giant constrictor)","1","critter",0.2,0],
	12 => ["spider (huge)","d2","critter",0.2,0],
	15 => ["spider eater","1","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,4],
	23 => ["doppelganger","d3","fiend",0.8,3],
	25 => ["green hag","1","fiend",0.8,3],
	27 => ["mephit","d3","fiend",0.8,3],
	30 => ["wererat","d3+1","fiend",0.8,3],
	35 => ["blink dog","d3+1","friend",0.5,2],
	40 => ["CR2 NPC","d3+1","NPC",1,0],
	43 => ["cockatrice","d3","terror",0.2,0],
	47 => ["gibbering mouther","1","terror",0.2,0],
	50 => ["grick","d3","terror",0.2,0],
	52 => ["hydra d3+4 heads","1","terror",0.2,0],
	55 => ["nightmare","1","terror",0.2,0],
	58 => ["shocker lizard","d3+1","terror",0.2,0],
	60 => [["violet fungus","shrieker"],["1","d3+1"],"terror",0.2,0],
	64 => ["azer","d3+1","tough",0.8,3],
	67 => ["bugbear","d3+1","tough",0.8,3],
	69 => [["ettercap","spider (medium)"],["1","d3"],"tough",0.8,3],
	72 => ["ogre","d3+1","tough",0.8,3],
	75 => ["salamander (small)","d3+1","tough",0.8,3],
	77 => [["troglodyte","giant lizard"],["d3+1","d2"],"tough",0.8,3],
	80 => ["worg","d3+1","tough",0.8,3],
	85 => [["ghast","ghoul"],["1","d3+1"],"undead",0.5,0],
	90 => ["mummy","d3","undead",0.5,0],
	95 => ["skeleton (huge)","d3+1","undead",0.5,0],
	100 => ["wraith","1","undead",0.5,0]
		]
	end
	def level_6
		@level_6 = Hash[
	2 => ["digester","1","critter",0.2,0],
	4 => ["dire ape","d3+1","critter",0.2,0],
	6 => ["dire wolf","d3+1","critter",0.2,0],
	7 => ["giant stag beetle","d3","critter",0.2,0],
	9 => ["giant wasp","d3+1","critter",0.2,0],
	12 => ["owlbear","d3","critter",0.2,0],
	15 => ["shambling mound","1","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,4],
	22 => ["annis (hag)","1","fiend",0.8,3],
	25 => ["harpy","d3","fiend",0.8,3],
	26 => [["quasit","dretch (demon)"],["1","d2"],"fiend",0.8,3],
	28 => ["wereboar","d3+1","fiend",0.8,3],
	30 => ["werewolf","d3+1","fiend",0.8,3],
	35 => ["werebear","d2","friend",0.8,3],
	40 => ["CR3 NPC","d3+1","NPC",1,0],
	43 => ["arrowhawk (small)","d3+1","terror",0.2,0],
	46 => ["basilisk","d2","terror",0.2,0],
	50 => ["displacer beast","d3","terror",0.2,0],
	53 => ["gargoyle","d3","terror",0.5,0],
	56 => ["hell hound","d3+1","terror",0.2,0],
	59 => ["howler","d3+1","terror",0.2,0],
	62 => ["otyugh","d3","terror",0.2,0],
	65 => [["ravid","animated object (large)"],["1","1"],"terror",0.2,0],
	67 => ["xorn (small)(d6 gems each)","d3+1","terror",0.2,0],
	70 => ["yeth hounds","d3+1","terror",0.2,0],
	77 => [["ettin","orc"],["1","d6+3"],"tough",0.8,3],
	82 => [["ogre","boar"],["d3","d3"],"tough",0.8,3],
	90 => ["weretiger","d2","tough",0.8,3],
	100 => ["zombie (huge)","d3+1","undead",0.5,0]
		]
	end
	def level_7
		@level_7 = Hash[
	4 => ["black pudding","1","critter",0.2,0],
	5 => ["centipede (gargantuan)","d2","critter",0.2,0],
	8 => ["criosphinx","1","critter",0.2,0],
	10 => ["dire boar","d3+1","critter",0.2,0],
	14 => ["remorhaz","1","critter",0.2,0],
	15 => ["scorpion (huge)","d2","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,4],
	22 => ["aranea","d3+1","fiend",0.8,3],
	24 => ["barghest (medium)","d3+1","fiend",0.8,3],
	26 => ["djinn","d3","fiend",0.8,3],
	28 => [["formian taskmaster","minotaur"],["1","1"],"fiend",0.8,3],
	30 => ["jann (genie)","d3+1","fiend",0.8,3],
	35 => ["hound archon","d3+1","friend",0.8,3],
	40 => ["CR4 NPC","d3+1","NPC",1,0],
	45 => ["cloaker","d3","terror",0.2,0],
	48 => ["cryohydra (d3+4 heads)","1","terror",0.2,0],
	52 => ["formian warrior","d4+2","terror",0.8,3],
	57 => ["invisible stalker","1","terror",0.2,0],
	60 => ["pyrohydra (d3+4 heads)","1","terror",0.2,0],
	65 => [["bugbear","wolf"],["d3+1","d3+1"],"tough",0.8,3],
	70 => [["ettin","brown bear"],["1","d2"],"tough",0.8,3],
	75 => ["minotaur","d3+1","tough",0.5,0],
	80 => [["salamander (medium)","salamander (small)"],["1","d3+1"],"tough",0.8,3],
	90 => ["ghost [NPC level d3+3]","1","undead",0.5,0],
	100 => ["vampire [NPC level d2+4]","1","undead",1,0]
		]
	end
	def level_8
		@level_8 = Hash[
	3 => ["giant soldier ant","d6+5","critter",0.2,0],
	8 => ["dire bat","d6+5","critter",0.2,0],
	10 => ["spider (gargantuan)","d2","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,4],
	22 => [["aboleth","skum"],["1","d3+1"],"fiend",0.8,3],
	24 => ["barghest (large)","d3+1","fiend",0.8,3],
	26 => ["erinye (devil)","d2","fiend",0.8,3],
	28 => [["medusa","grimlock"],["1","d6+3"],"fiend",0.8,3],
	30 => ["mind flayer","1","fiend",0.8,3],
	33 => ["ogre mage","1","fiend",0.8,3],
	35 => [["yuan-ti halfblood","yuan-ti pureblood"],["1","d3"],"fiend",0.8,3],
	40 => ["lammasu","1","friend",0.8,3],
	45 => ["CR5 NPC","d3+1","NPC",1,0],
	47 => ["achaierai","d3+1","terror",0.2,0],
	48 => ["arrowhawk (medium)","d3+1","terror",0.2,0],
	50 => ["girallon","d3+1","terror",0.2,0],
	52 => ["flesh golem","d2","terror",0.2,0],
	54 => ["gray render","1","terror",0.2,0],
	56 => ["hieracosphinx","d3+1","terror",0.2,0],
	59 => ["hydra (d3+7 heads)","1","terror",0.2,0],
	60 => ["lernaean hydra (d3+4 heads)","1","terror",0.2,0],
	62 => ["phase spider","d3+1","terror",0.2,0],
	64 => ["rast","d3+1","terror",0.2,0],
	66 => ["shadow mastiff","d3+1","terror",0.2,0],
	68 => ["winter wolf","d3+1","terror",0.2,0],
	70 => ["xorn (medium)(2d6 gems each)","d3","terror",0.2,0],
	74 => [["drider","large monstrous spider"],["1","d3+1"],"tough",0.8,2],
	78 => ["ettin","d3+1","tough",0.8,2],
	82 => ["manticore","d3+1","tough",0.8,2],
	86 => ["salamander (medium)","d3+1","tough",0.8,2],
	90 => ["troll","d3+1","tough",0.8,2],
	100 => ["spectre","d2","undead",0.5,0]
		]
	end
	def level_9
		@level_9 = Hash[
	5 => ["bulette","d3","critter",0.2,0],
	10 => ["dire lion","d4+2","critter",0.2,0],
	20 => ["dragon","1","dragon",0.8,3],
	21 => ["bebilith (demon)","1","fiend",0.8,2],
	22 => ["lamia","d3+1","fiend",0.8,2],
	24 => [["mind flayer","charmed creatures, roll Table4-20"],["1","1"],"fiend",0.8,2],
	26 => ["night hag","1","fiend",0.8,2],
	28 => [["ogre mage","ogre"],["1","d4+2"],"fiend",0.8,2],
	30 => ["rakshasa","1","fiend",0.8,2],
	32 => ["succubus","1","fiend",0.8,2],
	34 => ["xill (barbaric 00-50, civilized 51-100)","d3+1","fiend",0.8,2],
	35 => [["yuan-ti abomination","yuan-ti pureblood (00-50) or halfblood (51-100)"],["1","d3"],"fiend",0.8,2],
	40 => ["androsphinx","1","friend",0.8,2],
	45 => ["CR6 NPC","d3+1","NPC",1,0],
	47 => ["behir","d2","terror",0.2,0],
	49 => ["belker","d3+1","terror",0.2,0],
	50 => ["cryohydra (d3+6 heads)","1","terror",0.2,0],
	52 => ["delver","1","terror",0.2,0],
	54 => ["dragon turtle","1","terror",0.2,0],
	55 => ["pyrohydra (d3+6 heads)","1","terror",0.2,0],
	57 => ["will-o-wisp","d3+1","terror",0.2,0],
	60 => ["wyvern","d3+1","terror",0.2,0],
	64 => [["barbazu (devil)","osyluth"],["1","d2"],"tough",0.8,2],
	68 => [["hill giant","dire wolf"],["1","d3"],"tough",0.8,2],
	72 => ["kyton (devil)","d3+1","tough",0.8,2],
	76 => ["osyluth (devil)","d3+1","tough",0.8,2],
	80 => [["troll","dire boar"],["d3+1","d3"],"tough",0.8,2],
	90 => ["bodak","d2","undead",0.5,0],
	100 => ["vampire [NPC level d2+6]","1","undead",1,0]
		]
	end
	def level_10
		@level_10 = Hash[
	5 => ["dire bear","d3+1","critter",0.2,0],
	15 => ["dragon","1","dragon",0.8,3],
	17 => ["aboleth","d3+1","fiend",0.8,2],
	19 => ["athach","d3+1","fiend",0.8,2],
	21 => ["formian myrmarch","1","fiend",0.8,2],
	24 => ["medusa","d3+1","fiend",0.8,2],
	26 => ["water naga","d3+1","fiend",0.8,2],
	28 => [["night hag","nightmare"],["1","1"],"fiend",0.8,2],
	30 => [["salamander (large)","salamander (medium)"],["1","d3"],"fiend",0.8,2],
	32 => ["yuan-ti abomination","d3+1","fiend",0.8,2],
	37 => ["lillend","d3+1","friend",0.8,2],
	47 => ["CR7 NPC","d3+1","NPC",1,0],
	49 => ["chaos beast","d3+1","terror",0.2,0],
	51 => ["chimera","d3+1","terror",0.2,0],
	53 => ["chuul","d3+1","terror",0.2,0],
	54 => ["lernaean cryohydra (d4+4 heads)","1","terror",0.2,0],
	56 => ["dragonne","d3+1","terror",0.2,0],
	58 => ["hellcat (devil)","d3+1","terror",0.2,0],
	59 => ["hydra (d3+9 heads)","1","terror",0.2,0],
	60 => ["phasm","1","terror",0.2,0],
	61 => ["lernaean pyrohydra (d4+4 heads)","1","terror",0.2,0],
	63 => ["retriever (demon)","1","terror",0.2,0],
	65 => ["red slaadi","d3+1","terror",0.8,2],
	67 => ["umber hulk","d3+1","terror",0.2,0],
	71 => ["barbazu (devil)","d3+1","tough",0.8,2],
	75 => ["drider","d3+1","tough",0.8,2],
	79 => [["frost giant","winter wolf"],["1","d3"],"tough",0.8,2],
	83 => [["stone giant","dire bear"],["1","d2"],"tough",0.8,2],
	87 => ["hill giant","d3+1","tough",0.8,2],
	90 => [["hamatula (devil)","barbazu (devil)"],["1","d2"],"tough",0.8,2],
	100 => ["ghost [NPC level d3+6]","1","undead",0.5,0]
		]
	end
	def level_11
		@level_11 = Hash[
	5 => ["dire tiger","d3","critter",0.2,0],
	15 => ["dragon","1","dragon",0.8,3],
	18 => ["hag covey (see p124)","1","fiend",0.8,1],
	21 => ["efreet","d3+1","fiend",0.8,1],
	24 => [["formian myrmarch","formian warrior"],["1","d6+3"],"fiend",0.8,1],
	27 => ["gynosphinx","d3+1","fiend",0.8,1],
	30 => ["dark naga","d3+1","fiend",0.8,1],
	35 => ["avoral guardinal (celestial)","d3","friend",0.8,1],
	45 => ["CR8 NPC","d3+1","NPC",1,0],
	48 => ["arrowhawk (large)","d3","terror",0.2,0],
	51 => ["destrachan","d3","terror",0.2,0],
	54 => ["clay golem","d2","terror",0.2,0],
	57 => ["gorgon","d3+1","terror",0.2,0],
	59 => ["lernaean hydra (d3+7 heads)","1","terror",0.2,0],
	62 => ["blue slaadi","d3+1","terror",0.8,1],
	65 => ["xorn (large)(4d6 gems each)","d3+1","terror",0.2,0],
	70 => [["fire giant","hell hound"],["1","d6+3"],"tough",0.8,1],
	75 => ["stone giant","d3+1","tough",0.8,1],
	80 => ["hamatula (devil)","d3+1","tough",0.8,1],
	90 => ["devourer","1","undead",0.5,0],
	100 => ["mohrg","d3+1","undead",0.5,0]
		]
	end
# %level_12 = ();
# %level_13 = ();
# %level_14 = ();
# %level_15 = ();
# %level_16 = ();
# %level_17 = ();
# %level_18 = ();
# %level_19 = ();
# %level_20 = ();

end

