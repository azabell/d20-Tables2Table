class Object
	def d(die_type)
		return Random.rand(1..die_type)
	end #d
	def randToKey(the_hash,the_roll)
		the_hash.keys.sort.each {|this_key| return this_key if the_roll <= this_key}
	end #randToKey ...do I use this?
	def randToValue(the_hash,the_roll)
		the_hash.keys.sort.each {|this_key| return the_hash[this_key] if the_roll <= this_key}
	end #randToValue
	def dieRoll(nDmXc)
		just_the_numbers = nDmXc.split(/d|\+|\-/)
		return just_the_numbers.first.to_i if just_the_numbers.length == 1
		number_of_dice = (just_the_numbers.first == "") ? 1 : just_the_numbers[0].to_i
		die_type = just_the_numbers[1].to_i
		constant_expression = (just_the_numbers.length == 3) ? just_the_numbers[2].to_i : 0
		rolling_count = (nDmXc.include? "-") ? -constant_expression : constant_expression
		1.upto(number_of_dice) {|n| rolling_count += d(die_type)}
		return rolling_count
	end #dieRoll
end #class Object

class Room
require_relative 'dragons_undeads'
attr_accessor :monster, :feature, :hidden_treasure, :trap, :special, :empty, :feature_list, :debug, :contents, :furnish_minor, :furnish_major, :treasure_hiding_in, :treasure_guarded_by
	def initialize 
		@monster = false
		@feature = false
		@hidden_treasure = false
		@trap = false
		@special = false
		@empty = false
		@feature_list = Array.new
		@debug = false
	end #initialize
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
	end #contents
	def furnish_minor
		#A simple transliteration from DMG3
		@furnish_minor = Array[
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
	end #furnish_minor
	def furnish_major
		#A simple transliteration from DMG3
		@furnish_major = Array[
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
	end #furnish_major
	def treasure_hiding_in
		#Modestly modified from DMG2
		@treasure_hiding_in = Hash[
			3 => "a room feature (or under the floor)",
			5 => "a disguise spell",
			8 => "a secret space inside a container",
			10 => "plain view",
			13 => "a loose stone in the floor",
			15 => "a loose stone in the wall",
			20 => "an attached 5x5 room"
		]
	end #treasure_hiding_in
	def treasure_guarded_by
		#Modestly modified from DMG2
		@treasure_guarded_by = Hash[
			10 => "the clever hiding place",
			12 => "contact poison (DC n)",
			14 => "dart poison (DC n)",
			16 => "trapdoor in front of object (d6 DC 10)",
			18 => "trapdoor randomly in the room (d6 DC 10)",
			20 => "a stone dropping from the ceiling (d6 DC 10)"
		]
	end #treasure_guarded_by
#trapLow = {} #A simple transliteration from DMG3 
#trapHigh = {} #A simple transliteration from DMG3
	def modifiedMonsterRoll(the_roll,multiplier_key,multiplier_hash)
		return the_roll if multiplier_key == 1
		new_roll = multiplier_hash.fetch(multiplier_key)[the_roll]
		return new_roll
	end
	def monster_what(monster,adjusted_level)
		output_text = monster[0]
		if monster[2] == "dragon" then
			dragon = Dragon.new(d(100))
			output_text = "#{dragon.age[dragon.type][adjusted_level-1]} #{dragon.type} dragon"
		elsif monster[2] == "undead" then
			undead = Undead.new(monster[0])
			output_text = "ghost, #{undead.npc} NPC levels" if monster[0].include? "ghost [NPC level"
			output_text = "vampire, #{undead.npc} NPC levels" if monster[0].include? "vampire [NPC level"
			output_text = "lich (level #{undead.npc} #{undead.lich_class})" if monster[0].include? "lich [NPC level"
		end
		return output_text
	end
	def monster_how_many(monster,modifier,adjusted_modifier)
		output_text = Array.new
		Array(monster[1]).each_index{ |a| 
			output_text << modifiedMonsterRoll(Array(monster[1])[a],modifier,adjusted_modifier)
		}
		return output_text
	end
	def monster_treasure(monster,level)
		####This is where I can/should insert the treasure text
		output_text = "None"
		output_text = "table 7-4(p170) for Level #{level+monster[4]}" if d(100) < 100*monster[3]
		####
		return output_text
	end
end #class Room

class Door
# modestly modified DMG3 4-4, 4-9 and DMG2 II, V
	def count
		return dieRoll("d4")
	end
	def type
		@type = Hash[
			3 => "portal",
			14 => "door",
			17 => "secret door",
			20 => "portcullis"
		]
	end
	def material
		@material = Hash[
			30 => "simple wooden",
			50 => "good wooden",
			70 => "strong wooden",
			80 => "stone",
			90 => "iron",
			93 => "slides to side",
			96 => "slides down",
			99 => "slides up",
			100 => "magically reinforced"
		]
	end
	def open
		@open = Hash[20 => "", 60 => "stuck ", 100 => "locked "]
	end
	def trapped
		@trapped = Hash[30 => true, 100 => false]
	end
	def quality
		@quality = Hash[
			"portal" => {"hardness" => 0, "HP" => 0},
			"simple wooden" => {"hardness" => 5, "HP" => 10, "stuck" => 13, "locked" => 15},
			"good wooden" => {"hardness" => 5, "HP" => 15, "stuck" => 16, "locked" => 18},
			"strong wooden" => {"hardness" => 5, "HP" => 20, "stuck" => 23, "locked" => 25},
			"stone" => {"hardness" => 8, "HP" => 60, "stuck" => 28, "locked" => 28},
			"iron" => {"hardness" => 10, "HP" => 60, "stuck" => 28, "locked" => 28},
			"wooden portcullis" => {"hardness" => 5, "HP" => 30, "stuck" => 25, "locked" => 25},
			"iron portcullis" => {"hardness" => 10, "HP" => 60, "stuck" => 25, "locked" => 25}
		]
	end
	def quality_modifiers
		@quality_modifiers = Hash[
			"slides to side" => {"break" => "d6"},
			"slides down" => {"break" => "d6"},
			"slides up" => {"break" => "2d6"},
			"magically reinforced" => {"break" => "15"},
			"lock" => {"hardness" => 15, "HP" => 30},
			"hinge" => {"hardness" => 15, "HP" => 30}
		]
	end
	def on_wall
		@on_wall = Hash[
			7 => "opposite",
			12 => "left",
			17 => "right",
			20 => "same"
		]
	end
	def constructed_with(the_door,egress)
		output_text = randToValue(the_door.material,d(100))
		output_text << " "+randToValue(the_door.material,d(90)) if the_door.material.key(output_text).to_i > 90
		output_text = "" if egress == " portal"
		output_text = output_text.sub(/stone/,"iron").sub(/(simple|good|strong) /,"") if egress == " portcullis"
		return output_text
	end
	def latched(the_door,egress)
		output_text = randToValue(the_door.open,d(100))
		output_text << "trapped " if randToValue(the_door.trapped,d(100))
		output_text = "" if egress == " portal"
		return output_text
	end
	def ruled_by(the_door,construction_text,latch_text,egress)
		door_type = construction_text.split.last(2).join(" ")
		door_type = "portal" if egress == " portal"
		door_type = door_type.split.last if door_type.split.last != "wooden"
		door_type = door_type.split.last+egress if egress == " portcullis"
		output_text = "\thardness: #{the_door.quality[door_type]["hardness"]}"
		output_text << "\tHP: #{the_door.quality[door_type]["HP"]}"
		output_text << "    break DC: #{the_door.quality[door_type]["stuck"]}" if latch_text.include? "stuck"
		output_text << "    break DC: #{the_door.quality[door_type]["locked"]}" if latch_text.include? "locked"
		#output_text << "    break: #{the_door.quality[door_construction]["break"]} if latch_text.include? "slides"
		return output_text
	end
end #class Door
