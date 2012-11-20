#!/usr/bin/ruby
require_relative 'room_variables'
require_relative 'master_table'
require_relative 'dungeon_levels'
require_relative 'dragons_undeads'

ARGV.length < 1 ? fail("\n You need to specify the dungeon level") : level = ARGV[0].to_i
ARGV.length > 2 ? fail("\n Only two input variables, please") : room_size = ARGV[1].to_i

adjusted = Master.new
room_has = Room.new
door_is = Door.new
puts "#{level} #{room_size}" if room_has.debug
### Doors
if room_size > 0 then
	print "\n~~~ In this #{room_size} sq ft room the other exits are \n"
	1.upto(door_is.count) { |n|
		egress = " "+randToValue(door_is.type,d(20))
		construction_text = door_is.constructed_with(door_is,egress)
		latch_text = door_is.latched(door_is,egress)
		game_qualifiers = door_is.ruled_by(door_is,construction_text,latch_text,egress)
		egress.lstrip! if egress == " portal"
		print " (#{n}) A #{latch_text}#{construction_text}#{egress} on the"
		print " #{randToValue(door_is.on_wall,d(20))} wall.\n"
		print "#{game_qualifiers}\n" if egress != "portal"
		print "\n"
	}
	print "\n"
end

### Contents
randToValue(room_has.contents,d(100)).each {|item| room_has.instance_variable_set("@"+item,true)}

if room_has.special then
	puts "~~~ Special: reroll, or staircase, or Shop"
end
if room_has.empty then
	puts "~~~ Empty room. Or is it..."
end
room_has.monster = true if room_has.debug
if room_has.monster then
	level_table = adjusted.master_table.fetch("lvl"+level.to_s)
	level_term = randToValue(level_table,d(100))
	dungeon = Dungeon.new("level_"+level_term[0].to_s)
	monster = randToValue(dungeon.effective_level,d(100))
	if monster[2] == "dragon" then
		dragon = Dragon.new(d(100))
		monster[0] = "#{dragon.age[dragon.type][level_term[0]-1]} #{dragon.type} dragon"
	elsif monster[2] == "undead" then
		undead = Undead.new(monster[0])
		monster[0] = "ghost, #{undead.npc} NPC levels" if monster[0].include? "ghost [NPC level"
		monster[0] = "vampire, #{undead.npc} NPC levels" if monster[0].include? "vampire [NPC level"
		monster[0] = "lich (level #{undead.npc} #{undead.lich_class})" if monster[0].include? "lich [NPC level"
	end
	Array(monster[1]).each_index{ |a| 
		room_has.die_to_roll << modifiedMonsterRoll(Array(monster[1])[a],level_term[1],adjusted.modifier)
	}
	monster[1] = room_has.die_to_roll
	####This is where I can/should insert the treasure text
	d(100) < 100*monster[3] ? treasure = "table 7-4(p170) for Level #{level+monster[4]}" : treasure = "None"
	####
	puts "Ahhh! Monsters!" if room_has.debug
	monster[2] == "friend" ? print("~~~ Encounter: FRIEND : ") : print("~~~ Encounter: ")
	print "#{dieRoll(monster[1].first)} #{Array(monster[0]).first} "
	1.upto((monster[1].length)-1) { |n| 
		print "and #{dieRoll(monster[1][n])} #{monster[0][n]}" 
	} if monster[1].length > 1
	print "\n"
	print "  Treasure: #{treasure}\n\n" 
	puts monster if room_has.debug
end
if room_has.feature then
	print "~~~ You find: "
	feature_type = d(100)
	1.upto(d(4)) { |minor| room_has.feature_list << room_has.furnish_minor[d(100)-1] } if feature_type <= 60
	1.upto(d(4)) { |major| room_has.feature_list << room_has.furnish_major[d(100)-1] } if feature_type > 40
	room_has.feature_list.sort!.each {|n| print "#{n}"; print ", " if n != room_has.feature_list.last} 
	print "\n\n"
end
if room_has.hidden_treasure then
	print "Hidden by/in #{randToValue(room_has.treasure_hiding_in,d(20))} and protected by\n"
	print "#{randToValue(room_has.treasure_guarded_by,d(20))} is a treasure for\n"
	print " Level #{level} that will take a Search DC #{20+level+dieRoll("d10-5")} to find.\n\n"
end
if room_has.trap then
	puts "AAAHHHHhhhhhhhh..... /thud" if room_has.debug
	# level 1-2, minor trap
	# level 3-4, 50:50::minor:major
	# level 5+, major trap
	print "Uncareful movement triggers a trap. Search DC #{20+level+dieRoll("d10-5")} to find.\n\n"
end

### Wandering Monsters
i = 0
i += 1 until d(100) > 90
puts "~~~ Make another Hallway Encounter check in #{30+30*i} feet, reset if there's combat"

print "\n\n\n"