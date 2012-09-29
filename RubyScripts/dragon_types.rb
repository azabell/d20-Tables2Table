class Dragon
require_relative 'room_variables'
#A simple transliteration from DMG p.126
	attr_accessor :type
	def initialize (percentage)
		@type = randToValue(color,percentage)
	end

	def color
		@color = Hash[
			16 => "White", 32 => "Black", 48 => "Green", 64 => "Blue", 80 => "Red",
			84 => "Brass", 88 => "Copper", 91 => "Bronze", 96 => "Silver", 100 => "Gold"
		]
	end
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
	end
end
