#Setting up the various Classes
class RoomContents
	attr_accessor :monster, :feature, :hidden_treasure, :trap, :special
	def switchLogic(tORf)
		tORf = (tORf) ? false : true 
		return tORf
	end
end

class Dungeon
	def initialize()
	end
end