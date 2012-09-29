class Room
attr_accessor :monster, :feature, :hidden_treasure, :trap, :special, :empty, :die_to_roll, :feature_list, :debug, :contents, :furnishMinor, :furnishMajor, :treasureHidingIn, :treasureGuardedBy

	def initialize 
		@monster = false
		@feature = false
		@hidden_treasure = false
		@trap = false
		@special = false
		@empty = false
		@die_to_roll = Array.new
		@feature_list = Array.new
		@debug = false
	end
	def contents
		# an amalgam of DMG3 table 4-10 and DMG2 table V.F.
		@contents = Hash[
			18 => ["monster"],
			44 => ["monster","feature"],
			45 => ["monster","hidden_treasure"],
			46 => ["monster","trap"],
			47 => ["monster","trap","hidden_treasure"],
			48 => ["monster","feature","trap"],
			49 => ["monster","hidden_treasure","trap"],
			50 => ["monster","feature","hidden_treasure","trap"],
			55 => ["special"],
			76 => ["feature"],
			77 => ["feature","hidden_treasure"],
			78 => ["feature","trap"],
			79 => ["feature","trap","hidden_treasure"],
			80 => ["hidden_treasure"],
			81 => ["hidden_treasure","trap"],
			82 => ["trap"],
			100 => ["empty"]
		]
	end
	def furnishMinor
		#A simple transliteration from DMG3
		@furnishMinor = Array[
			"Alcove", "Altar", "Arch", "Arrow slit(wall)/Murder hole (ceiling)", "Balcony", 
			 "Barrel", "Bed", "Bench", "Bookcase", "Brazier",
			"Cage", "Caldron", "Carpet", "Carving", "Casket", 
			 "Catwalk", "Chair", "Chandelier", "Charcoal bin", "Chasm",
			"Chest", "Chest of drawers", "Chute", "Coat rack", "Collapsed wall", 
			 "Crate", "Cupboard", "Curtain", "Divan", "Dome",
			"Door (broken)", "Dung heap", "Evil symbol", "Fallen stones", "Firepit", 
			 "Fireplace", "Font", "Forge", "Fountain", "Furniture (broken)",
			"Gong", "Hay (pile)", "Hole", "Hole (blasted)", "Idol", 
			 "Iron bars", "Iron maiden", "Kiln", "Ladder", "Ledge",
			"Loom", "Loose masonry", "Manacles", "Manger", "Mirror", 
			 "Mosaic", "Mound of rubble", "Oven", "Overhang", "Painting",
			"Partially collapsed ceiling", "Pedestal", "Peephole", "Pillar", "Pillory", 
			 "Pit (shallow)", "Platform", "Pool", "Portcullis", "Rack",
			"Ramp", "Recess", "Relief", "Sconce", "Screen", 
			 "Shaft", "Shelf", "Shrine", "Spinning wheel", "Stall or pen",
			"Statue", "Statue (toppled)", "Steps", "Stool", "Stuffed beast", 
			 "Sunken area", "Table (large)", "Table (small)", "Tapestry", "Throne",
			"Trash (pile)", "Tripod", "Trough", "Tub", "Wall basin", 
			 "Wardrobe", "Weapon rack", "Well", "Winch and pulley", "Workbench"
		]
	end
	def furnishMajor
		#A simple transliteration from DMG3
		@furnishMajor = Array[
			"Anvil", "Ash", "Backpack", "Bale (straw)", "Bellows",
			 "Belt", "Bits of fur", "Blanket", "Bloodstain", "Bones (humanoid)",
			"Bones (nonhumanoid)", "Books", "Boots", "Bottle", "Box",
			 "Branding iron", "Broken glass", "Bucket", "Candle", "Candelabra",
			"Playing cards", "Chains", "Claw marks", "Cleaver", "Clothing",
			 "Cobwebs", "Cold spot", "Corpse (adventurer)", "Corpse (monster)", "Cracks",
			"Dice", "Discarded weapons", "Dishes", "Dripping water", "Drum",
			 "Dust", "Engraving", "Equipment (broken)", "Equipment (usable)", "Flask",
			"Flint and Tinder", "Foodstuffs (spoiled)", "Foodstufs (edible)", "Fungus", "Grinder",
			 "Hook", "Horn", "Hourglass", "Insects", "Jar",
			"Keg", "Key", "Lamp", "Lantern", "Markings",
			 "Mold", "Mud", "Mug", "Musical instrument", "Mysterious stain", 
			"Nest (animal)", "Odor (unidentifiable)", "Oil (fuel)", "Oil (scented)", "Paint",
			 "Paper", "Pillows", "Smoker's pipe", "Pole", "Pot",
			"Pottery shard", "Pouch", "Puddle (water)", "Rags", "Razor",
			 "Rivulet", "Ropes", "Runes", "Sack", "Scattered stones",
			"Scorch marks", "Scroll (nonmagic)", "Scroll case (empty)", "Skull", "Slime",
			 "Sound (unexplained)", "Spices", "Spike", "Teeth", "Tongs",
			"Tools", "Torch (stub)", "Tray", "Trophy", "Twine",
			 "Urn", "Utensils", "Whetstone", "Wood scraps", "Words (scrawled)"
		]
	end
	def treasureHidingIn
		#Modestly modified from DMG2
		@treasureHidingIn = Hash[
			3 => "a room feature (or under the floor)",
			5 => "a disguise spell",
			8 => "a secret space inside a container",
			10 => "plain view",
			13 => "a loose stone in the floor",
			15 => "a loose stone in the wall",
			20 => "an attached 5x5 room"
		]
	end
	def treasureGuardedBy
		#Modestly modified from DMG2
		@treasureGuardedBy = Hash[
			10 => "the clever hiding place",
			12 => "contact poison (DC n)",
			14 => "dart poison (DC n)",
			16 => "trapdoor in front of object (d6 DC 10)",
			18 => "trapdoor randomly in the room (d6 DC 10)",
			20 => "a stone dropping from the ceiling (d6 DC 10)"
		]
	end
#trapLow = {} #A simple transliteration from DMG3 
#trapHigh = {} #A simple transliteration from DMG3
end

class Door
	def onWall
		@onWall = Array["North","South","East","West"]
	end
#doorType = {}
end

class Object
	def d(die_type)
		return Random.rand(1..die_type)
	end
	def randToKey(the_hash,the_roll)
		the_hash.keys.sort.each {|this_key| return this_key if the_roll <= this_key}
	end
	def randToValue(the_hash,the_roll)
		the_hash.keys.sort.each {|this_key| return the_hash[this_key] if the_roll <= this_key}
	end
	def dieRoll(nDmXc)
		just_the_numbers = nDmXc.split(/d|\+|\-/)
		return just_the_numbers.first.to_i if just_the_numbers.length == 1
		number_of_dice = (just_the_numbers.first == "") ? 1 : just_the_numbers[0].to_i
		die_type = just_the_numbers[1].to_i
		constant_expression = (just_the_numbers.length == 3) ? just_the_numbers[2].to_i : 0
		rolling_count = (nDmXc.include? "-") ? -constant_expression : constant_expression
		1.upto(number_of_dice) {|n| rolling_count += d(die_type)}
		return rolling_count
	end
	def modifiedMonsterRoll(the_roll,multiplier_key,multiplier_hash)
		return the_roll if multiplier_key == 1
		new_roll = multiplier_hash.fetch(multiplier_key)[the_roll]
		return new_roll
	end
end

