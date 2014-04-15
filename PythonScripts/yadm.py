#apz#!/usr/bin/python
from core_variables import *
import room

#ARGV.length < 1 ? fail("\n You need to specify the dungeon level") : actual_level = ARGV[0].to_i
#ARGV.length > 2 ? fail("\n Only two input variables, please") : room_size = ARGV[1].to_i
actual_level = 10
room_size = 1
wandering_monster = True

### Doors
if room_size > 0:
    number_of_doors = room.Door.door_count()
    print("\n~~~ In this %i sq ft room there are %i other exits:" % (room_size, number_of_doors))
    for n in list(range(0, number_of_doors)):
        this_door = room.Door
        egress = this_door.opening()
        egress_text = " ".join([this_door.latched(egress),this_door.constructed_with(egress),egress]).lstrip(" ")
        print(" (%i) A %s on the %s wall." % (n+1, egress_text, this_door.location()) )
        if egress_text != "portal": print(this_door.game_details(egress_text))
    print("\n")

### Contents
this_room = room.Contents.master_list()
if wandering_monster: this_room.append("monster")
if "special" in this_room:
    print("~~~ Special: reroll, or staircase, or Shop\n\n")
if "nothing" in this_room:
    print("~~~ Empty room. Or is it...\n\n")
if "feature" in this_room:
    print("~~~ You find: %s \n\n" % room.Feature.catalogue())
if "monster" in this_room:
    print(room.Monster.information(actual_level))


if "hidden_treasure" in this_room:

if "trap" in this_room:

### Wandering Monster

'''
require_relative 'room_variables'
require_relative 'master_table'
require_relative 'dungeon_levels'


adjusted = Master.new
room_has = Room.new
door_is = Door.new
puts "#{actual_level} #{room_size}" if room_has.debug
### Contents
randToValue(room_has.contents,d(100)).each {|item| room_has.instance_variable_set("@"+item,true)}

room_has.monster = true if room_has.debug
if room_has.monster then
	level_master = randToValue(adjusted.master_table.fetch("lvl"+actual_level.to_s),d(100))
	dungeon = Dungeon.new("level_"+level_master[0].to_s)
	monster_items = randToValue(dungeon.effective_level,d(100))
	monsters = room_has.monster_what_kind(monster_items,level_master[0])
	number_of = room_has.monster_how_many(monster_items,level_master[1],adjusted.modifier)
	treasure = room_has.monster_treasure(monster_items,actual_level)
	monster_items[2] == "friend" ? print("~~~ Encounter: FRIEND : ") : print("~~~ Encounter: ")
	Array(monsters).each_index { |n|
		print "#{dieRoll(number_of[n])} #{Array(monsters)[n]}"
		print " and " if n+1 < Array(monsters).length
	}
	print "\n"
	print "  Treasure: #{treasure}\n\n"
	puts monster if room_has.debug
end
if room_has.hidden_treasure then
	print "~~~ Hidden by/in #{randToValue(room_has.treasure_hiding_in,d(20))} and protected by\n"
	print "    #{randToValue(room_has.treasure_guarded_by,d(20))} is a treasure for\n"
	print "    Level #{actual_level} that will take a Search DC #{20+actual_level+dieRoll("d10-5")} to find.\n\n"
end
if room_has.trap then
	puts "AAAHHHHhhhhhhhh..... /thud" if room_has.debug
	# level 1-2, minor trap
	# level 3-4, 50:50::minor:major
	# level 5+, major trap
	print "~~~ Uncareful movement triggers a trap. Search DC #{20+actual_level+dieRoll("d10-5")} to find.\n\n"
end

### Wandering Monsters
i = 0
i += 1 until d(100) > 90
puts "~~~ Make another Hallway Encounter check in #{30+30*i} feet, reset if there's combat"

print "\n\n\n"
'''