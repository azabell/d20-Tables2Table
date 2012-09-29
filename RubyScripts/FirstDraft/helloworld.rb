#!C:\\Ruby193\\bin\\ruby.exe
#############
# YADP (yet another dungeon populator)
# Given the dungeon level, and either
#                              sqft for a room/chamber, or
#                              <null> for a wandering encounter,
# Determine contents (dressing, monster, treasure, trap, ...)
# If room/chamber, determine door count and type.
#
# ruby ./yadp.rb level (sqft)
#############
puts "Hello, world!"
#### initalize variables
ARGV.length < 1 ? fail("\n You need to specify the dungeon level") : level = ARGV[0].to_i
ARGV.length > 2 ? fail("\n Only two input variables, please") : room_size = ARGV[1].to_i
if level > room_size && room_size != 0
	fail("\n Syntax puts dungeon level first, then room size")
elsif level > 20
	fail("\n Syntax assumes max of 20 dungeon levels")
end
require_relative 'class_variables'
require_relative 'doors_traps_contents'
require_relative 'master_monster_table'
require_relative 'dungeon_levels'
require_relative 'dragon_types'
room_has = RoomContents.new
room_has.monster = false
room_has.feature = false
room_has.hidden_treasure = false
room_has.trap = false
room_has.special = false

#### functions
def d(die_type) 
	return Random.rand(1..die_type)
end
def numberOfObjects(nDmXc)
	just_the_numbers = nDmXc.split(/d|\+|\-/)
	return just_the_numbers.first.to_i if just_the_numbers.length == 1
	number_of_dice = (just_the_numbers.first == "") ? 1 : just_the_numbers[0].to_i
	die_type = just_the_numbers[1].to_i
	constant_expression = (just_the_numbers.length == 3) ? just_the_numbers[2].to_i : 0
	rolling_count = (nDmXc.include? "-") ? -(constant_expression) : constant_expression
	1.upto(number_of_dice) do
		rolling_count += d(die_type)
	end
	return rolling_count
end
def randToKey(the_hash,the_roll)
	for the_key in the_hash.keys.sort
		return the_key if the_roll <= the_key
	end
end 
def howManyMonsters(actual_level,encounter_level_and_die_multiplier,which_die_to_roll)

howManyMonsters($scaledMonsterCount,$dungeon_level{$monster}[1],$scaledLevel-$level)

	encounter_level = encounter_level_and_die_multiplier[0]
	die_multiplier = encounter_level_and_die_multiplier[1]
	return which_die_to_roll if (actual_level - encounter_level) == 0
	for each_monster in 1..which_die_to_roll.length
		which_die_to_roll[each_monster] = @die_modifier.fetch(die_multiplier).fetch(which_die_to_roll[each_monster])
	end
	# my $countThem = $_[0]; 
	# if (ref($_[1]) eq "ARRAY") {
		# my @twoMonsters = @{$_[1]};
		# if ($_[2] == 0) {return @twoMonsters};
# #		print " before : @twoMonsters :";	##
		# $twoMonsters[0] = $die_modifier{$countThem}{$twoMonsters[0]};
		# $twoMonsters[1] = $die_modifier{$countThem}{$twoMonsters[1]};
# #		print " after : @twoMonsters \n";	##
		# return @twoMonsters;
	# } else {
		# my $oneMonster = $_[1];
		# if ($_[2] == 0) {return $oneMonster};
# #		print " before : $oneMonster :";	##
		# $oneMonster = $die_modifier{$countThem}{$oneMonster};
# #		print " after : $oneMonster \n";	##
		# return $oneMonster;
	# }
end

#### do stuff
### Doors
room_size != 0 ? puts("yup, it's a #{room_size} sqft room") : puts("::not a room::")

### Contents
this_room_key = randToKey(@roomContents,d(100))
for item in @roomContents.fetch(this_room_key)
	room_has.monster
	if item == "monster"        then has_monster = true
	elsif item == "feature"     then has_feature = true
	elsif item == "hidTreasure" then has_hidden_treasure = true
	elsif item == "trap"        then has_trap = true
	elsif item == "special"     then has_special = true
	end
end

if has_special then
	puts "Special: reroll, or staircase, or Shop"
end

if has_monster then
	master_level = @master_hash.fetch("lvl"+level.to_s).fetch(randToKey(@master_hash.fetch("lvl"+level.to_s),d(100)))
#	scaled_level,scaled_monster_fraction = master_level[0],[1]
	dungeon_level = instance_variable_get("@level_"+master_level[0].to_s)
	monster = randToKey(dungeon_level,d(100))
	if dungeon_level.fetch(monster)[2] == "dragon" then
		dragonColor = randToKey(@random_dragon,d(100))
		dungeon_level.fetch(monster)[0] = @random_dragon.fetch(dragonColor)[1][(master_level[0]-1)]+" "+@random_dragon.fetch(dragonColor)[0]+" dragon"
	end
	dungeon_level.fetch(monster)[2] == "friend" ? print "~FRIEND~ " : print "~Monster~ "
	if dungeon_level(monster)[0].kind_of?(Array) then
		dungeon_level(monster)[1] = [howManyMonsters(level,master_level,dungeon_level(monster)[1]]
		# print count($dungeon_level{$monster}[1][0])," ",$dungeon_level{$monster}[0][0]," and ";
		# print count($dungeon_level{$monster}[1][1])," ",$dungeon_level{$monster}[0][1],"\n";
	else
		dungeon_level(monster)[1] = howManyMonsters($scaledMonsterCount,$dungeon_level{$monster}[1],$scaledLevel-$level)
		# print count($dungeon_level{$monster}[1])," ",$dungeon_level{$monster}[0],"\n";
	end
	# if (d(100) < 100*$dungeon_level{$monster}[3]) {$treasure = 1};
	# if ($treasure) {$treasure = "table 7-4(p170) for Level ".($level+$dungeon_level{$monster}[4])} else {$treasure = "None"};
	# print "  Treasure: ",$treasure,"\n\n";
end
# ##stopped trying to edit here##
# if ($hasFeature) {
	# local $" = ", ";
	# my $i = 0;
	# my $featureType = d(100);
	# my @listOfFurnishings = ();
	# if ($featureType <= 40 || $featureType > 80) {
		# my $minorFurnishings = d(4); for ($i = 1; $i <= $minorFurnishings; $i++) {
			# @listOfFurnishings = (@listOfFurnishings, $furnish_minor[d(100)-1]);
		# }
	# }
	# if ($featureType > 40) {
		# my $majorFurnishings = d(4); for ($i = 1; $i <= $majorFurnishings; $i++) {
			# @listOfFurnishings = (@listOfFurnishings, $furnish_major[d(100)-1]);
		# }
	# }
	# print "You find: @listOfFurnishings \n\n";
# }
# if ($hasHidTreasure) {
	# my $hidingWhere = $treasure_hide{randToKey(\%treasure_hide,d(20))};
	# my $guardedBy = $treasure_guard{randToKey(\%treasure_guard,d(20))};
	# my $searchDC = 20+$level+count("d10-5");
	# print "Hidden by/in ",$hidingWhere," and protected by\n ",$guardedBy," is a treasure for\n";
	# print " Level ",$level," that will take a Search DC ",$searchDC," to find.\n\n";
# }
# if ($hasTrap) {
	# #level 1-2, minor trap
	# #level 3-4, 50/50 minor or major
	# #level 5+, major trap
	# print "Uncareful movment triggers a trap. Search DC",20+$level+count("d10-5")," to find.\n\n";
# }
