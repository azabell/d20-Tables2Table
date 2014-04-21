#apz#!/usr/bin/python
import sys
import room

whats_here = room.Description.parse_input(sys.argv)
if "ERROR" in whats_here: sys.exit(whats_here)
room_size = whats_here["room"] if "room" in whats_here else False
dungeon_level = whats_here["level"] if "level" in whats_here else False
wandering_monster = whats_here["wander"] if "wander" in whats_here else False


### Doors
if room_size:
    number_of_doors = room.Door.door_count()
    print("~~~ In this %i sq ft room there are %i other exits:" % (room_size, number_of_doors))
    for n in list(range(0, number_of_doors)):
        this_door = room.Door
        egress = this_door.opening()
        egress_text = " ".join([this_door.latched(egress),this_door.constructed_with(egress),egress]).lstrip(" ")
        print(" (%i) A %s on the %s wall." % (n+1, egress_text, this_door.location()) )
        if egress_text != "portal": print(this_door.game_details(egress_text))


### Contents
this_room = room.Description.of_what_is_here()
if dungeon_level:
    if wandering_monster:
        print(room.Monster.wandering_monster_check(dungeon_level))
        sys.exit()
    if "special" in this_room:
        print("~~~ Special: reroll, or staircase, or Shop")
    if "nothing" in this_room:
        print("~~~ Empty room. Or is it...")
    if "feature" in this_room:
        print(room.Feature.information())
    if "monster" in this_room:
        print(room.Monster.information(dungeon_level))
    if "hidden_treasure" in this_room:
        print(room.Treasure.information(dungeon_level))
    if "trap" in this_room:
        print(room.Trap.information(dungeon_level))
