#apz#!/usr/bin/python
from core_variables import *
import room

#ARGV.length < 1 ? fail("\n You need to specify the dungeon level") : actual_level = ARGV[0].to_i
#ARGV.length > 2 ? fail("\n Only two input variables, please") : room_size = ARGV[1].to_i
actual_level = 3
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
    print(room.Feature.information())
if "monster" in this_room:
    print(room.Monster.information(actual_level))
if "hidden_treasure" in this_room:
    print(room.Treasure.information(actual_level))
if "trap" in this_room:
    print(room.Trap.information(actual_level))

'''
### Wandering Monster
i = 0
i += 1 until d(100) > 90
puts "~~~ Make another Hallway Encounter check in #{30+30*i} feet, reset if there's combat"

print "\n\n\n"
'''