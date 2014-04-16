from core_variables import *
import re
import dragons
import undead
import room_tables
import door_tables
import dungeon


class Door:
    def door_count(roll="d4"):
        return dieRoll(roll)

    def location(roll="d20"):
        return randToValue(door_tables.on_which_wall, dieRoll(roll))

    def opening(roll="d20"):
        return randToValue(door_tables.egress_type, dieRoll(roll))

    def constructed_with(egress):
        construction_key = d(100)
        output_text = randToValue(door_tables.material, construction_key)
        if construction_key > 90:
            output_text += " " + randToValue(door_tables.material, d(90))
        if "portal" in egress:
            output_text = ""
        elif "portcullis" in egress:
            output_text = re.sub("(simple|good|strong) ", "", output_text.replace("stone", "iron"))
        return output_text

    def latched(egress):
        output_text = randToValue(door_tables.egress_status, d(100))
        if randToValue(door_tables.is_trapped, d(100)):
            output_text += " trapped"
        if "portal" in egress:
            output_text = ""
        return output_text

    def game_details(the_door):
        door_components = re.split(" ", the_door)
        if "secret" in door_components:
            door_components.remove("secret")
        if "portal" in door_components:
            door_type = "portal"
        elif "portcullis" in door_components:
            door_type = " ".join(door_components[-2:])
        elif "wooden" in door_components:
            door_type = " ".join(door_components[-3:-1])
        else:
            door_type = door_components[-2]
        door_quality = door_tables.qualifiers[door_type]
        output_text = "\thardness: %s \tHP: %s" % (door_quality["hardness"], door_quality["HP"])
        if "stuck" in door_components:
            output_text += "\tbreak DC: %s" % door_quality["stuck"]
        elif "locked" in door_components:
            output_text += "\tbreak DC: %s" % door_quality["locked"]
        if "slides to side" in the_door:
            output_text += "\tbreak: %s" % door_tables.qualifiers["slides to side"]["break"]
        elif "slides down" in the_door:
            output_text += "\tbreak: %s" % door_tables.qualifiers["slides down"]["break"]
        elif "slides up" in the_door:
            output_text += "\tbreak: %s" % door_tables.qualifiers["slides up"]["break"]
        elif "magically reinforced" in the_door:
            output_text += "\tbreak: %s" % door_tables.qualifiers["magically reinforced"]["break"]
        return output_text


class Contents:
    def master_list(roll="d100"):
        return randToValue(room_tables.contents, dieRoll(roll))


class Monster:
    def how_many(monster, effective_level_modifier):
        if isinstance(monster[1], str):
            monster[1] = [monster[1]]
        return [Monster.modified_monster_roll(x, effective_level_modifier) for x in monster[1]]

    def what_kind(monster, effective_level):
        if monster[2] == "dragon":
            dragon_type = randToValue(dragons.color, d(100))
            dragon_size = randToValue(dragons.age, dragon_type)[effective_level - 1]
            output_text = "%s %s Dragon" % (dragon_size, dragon_type)
        elif monster[2] == "undead":
            if monster[0].startswith("ghost [NPC"):
                output_text = "ghost, %s NPC levels" % undead.npc(monster[0])
            elif monster[0].startswith("vampire [NPC"):
                output_text = "vampire, %s NPC levels" % undead.npc(monster[0])
            elif monster[0].startswith("lich [NPC"):
                output_text = "lich (level %s %s)" % (undead.npc(monster[0]), undead.lich_class())
        else:
            output_text = monster[0]
        if isinstance(monster[0], str):
            output_text = [output_text]
        return output_text

    def treasure_kept(monster, actual_level):
        ####This is where I can/should insert the treasure text
        if 100 * monster[3] > d(100):
            output_text = "table 7-4(p170) for Level %s" % str(actual_level + monster[4])
        else:
            output_text = "None"
        return output_text

    def modified_monster_roll(old_roll, multiplier_key):
        if multiplier_key == 1:
            new_roll = old_roll
        else:
            new_roll = dungeon.monster_dice_modifier[multiplier_key][old_roll]
        return new_roll

    def information(actual_level):
        effective_level = randToValue(dungeon.master_table["lvl"+str(actual_level)],d(100))
        of_this_monster = randToValue(getattr(dungeon, "level_"+str(effective_level[0])), d(100))
        monsters  = Monster.what_kind(of_this_monster,effective_level[0])
        number_of = Monster.how_many(of_this_monster,effective_level[1])
        treasure  = Monster.treasure_kept(of_this_monster,actual_level)
        output_text = "~~~ Encounter: FRIEND :\n" if of_this_monster[2] == "friend" else "~~~ Encounter: \n"
        for n in range(len(number_of)):
            output_text += " %s %s" % (dieRoll(number_of[n]), monsters[n])
            if n+1 < len(number_of): output_text += " and"
        output_text += "\n  Treasure: %s\n\n" % treasure
        return output_text


class Feature:
    def found_list(roll="d4", scale="minor"):
        if isinstance(roll, str): roll = dieRoll(roll)
        which_furniture = {"minor": room_tables.furnish_minor, "major": room_tables.furnish_major}
        these_features = []
        for n in range(0, roll): these_features.append(which_furniture[scale][d(100) - 1])
        return these_features

    def information(roll="d100"):
        if isinstance(roll, str): roll = dieRoll(roll)
        list_of_features = []
        if roll <= 60:
            list_of_features.extend(Feature.found_list(d(4), "minor"))
        if roll > 40:
            list_of_features.extend(Feature.found_list(d(4), "major"))
        output_text = "~~~ You find: "
        output_text += ", ".join(sorted(list_of_features))
        output_text += "\n\n"
        return output_text


class Treasure:
    def hidden_by(roll="d20"):
        return randToValue(room_tables.treasure_hiding_places, dieRoll(roll))

    def guarded_by(roll="d20"):
        return randToValue(room_tables.treasure_traps, dieRoll(roll))

    def information(actual_level,kind="hidden"):
        where_is_it = Treasure.hidden_by()
        what_guards_it = Treasure.guarded_by()
        search_dc = 20+actual_level+dieRoll("d10-5")
        output_text = "~~~ Hidden by/in %s" % where_is_it
        if what_guards_it != "None":
            output_text += " and protected by\n    %s" % what_guards_it
        output_text += " is a treasure for\n"
        output_text += "    Level %s that will take a Search DC %s to find.\n\n" % (actual_level, search_dc)
        return output_text


class Trap:
    def information(actual_level):
        search_dc = 20+actual_level+dieRoll("d10-5")
        if actual_level <= 2:
            scale = "minor"
        elif actual_level >= 5:
            scale = "major"
        else:
            scale = "minor" if d(100) <= 50 else "major"
        output_text = "~~~ Uncareful movement triggers a %s trap. Search DC %s to find.\n\n" % (scale, search_dc)
        return output_text
