class Dragon
#A simple transliteration from DMG p.126
require_relative 'room_variables'
attr_accessor :type
	def initialize (percentage)
		@type = randToValue(color,percentage)
	end #initialize

	def color
		@color = Hash[
			16 => "White", 32 => "Black", 48 => "Green", 64 => "Blue", 80 => "Red",
			84 => "Brass", 88 => "Copper", 91 => "Bronze", 96 => "Silver", 100 => "Gold"
		]
	end #color
	def age
		@age = Hash[
			"White" => ["wyrmling","very young","young","juvenile","juvenile",
			 "young adult","young adult","adult","adult","mature adult",
			 "mature adult","old","old","old","very old",
			 "very old","ancient","wyrm","great wyrm","great wyrm"],
			"Black" => ["wyrmling","wyrmling","very young","young","juvenile",
			 "juvenile","young adult","young adult","adult","adult",
			 "mature adult","mature adult","mature adult","old","old",
			 "very old","very old","ancient","wyrm","great wyrm"],
			"Green" => ["wyrmling","wyrmling","very young","young","young",
			 "juvenile","juvenile","young adult","young adult","young adult",
			 "adult","adult","mature adult","mature adult","mature adult",
			 "old","old","very old","ancient","ancient"],
			"Blue" => ["wyrmling","wyrmling","very young","young","young",
			 "juvenile","juvenile","young adult","young adult","young adult",
			 "adult","adult","adult","mature adult","mature adult",
			 "old","old","very old","ancient","ancient"],
			"Red" => ["wyrmling","wyrmling","wyrmling","very young","young",
			 "young","juvenile","juvenile","juvenile","young adult",
			 "young adult","young adult","adult","adult","mature adult",
			 "mature adult","mature adult","old","old","very old"],
			"Brass" => ["wyrmling","wyrmling","very young","young","young",
			 "juvenile","juvenile","young adult","young adult","adult",
			 "adult","mature adult","mature adult","mature adult","old",
			 "old","very old","very old","ancient","wyrm"],
			"Copper" => ["wyrmling","wyrmling","very young","very young","young",
			 "young","juvenile","juvenile","young adult","young adult",
			 "adult","adult","adult","mature adult","mature adult",
			 "old","old","old","very old","ancient"],
			"Bronze" => ["wyrmling","wyrmling","very young","very young","young",
			 "young","juvenile","juvenile","young adult","young adult",
			 "young adult","adult","adult","adult","mature adult",
			 "mature adult","old","old","very old","ancient"],
			"Silver" => ["wyrmling","wyrmling","wyrmling","very young","young",
			 "young","juvenile","juvenile","juvenile","young adult",
			 "young adult","young adult","adult","adult","mature adult",
			 "mature adult","mature adult","old","old","very old"],
			"Gold" => ["wyrmling","wyrmling","wyrmling","wyrmling","very young",
			 "very young","young","young","juvenile","juvenile",
			 "young adult","young adult","young adult","adult","adult",
			 "mature adult","mature adult","mature adult","old","old"]
		]
	end #age
end #class Dragon

class Undead
require_relative 'room_variables'
attr_accessor :description, :npc, :lich_class
	def initialize (description)
		@description = description
	end #initialize
	def npc
		parse_die_roll = @description.split.last.sub(/]/,"")
		return dieRoll(parse_die_roll)
	end #npc
	def lich_class
		lich_hash = Hash[ 10 => "cleric", 40 => "sorcerer", 100 => "wizard"]
		return randToValue(lich_hash,d(100))
	end #lich_class
end #class Undead
