require_relative 'class_variables'

room_has = RoomContents.new
room_has.monster = false
room_has.feature = false
room_has.hidden_treasure = false
room_has.trap = false
room_has.special = false

	def switchLogic(tORf)
		return tORf = (tORf) ? false : true 
	end
	puts switchLogic(room_has.feature)
# puts RoomContents.switchLogic(room_has.feature)
this_room_key = Array["monster", "feature"]
for item in this_room_key
	puts item
	puts instance_variable_get("room_has."+item)
	# room_has.{item} = (room_has.{item}) ? false : true
end