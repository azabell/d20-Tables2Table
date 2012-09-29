#!/usr/bin/perl
#############
# YADP (yet another dungeon populator)
# Given the dungeon level, and either
#                              sqft for a room/chamber, or
#                              <null> for a wandering encounter,
# Determine contents (dressing, monster, treasure, trap, ...)
# If room/chamber, determine door count and type.
#
# perl ./dungeon_encounters.pl level (sqft)
#############
use strict;
use warnings;
use FindBin;
use lib $FindBin::Bin;

#### source hashes, keeping this script clean
our (%door_type,%trap_low,%trap_high,@furnish_minor,@furnish_major,%room_contains,
     %treasure_hide,%treasure_guard,%master_table,%die_modifier,%random_dragon,
     %level_1,%level_2,%level_3,%level_4,%level_5,%level_6,%level_7,%level_8,%level_9,%level_10,
     %level_11,%level_12,%level_13,%level_14,%level_15,%level_16,%level_17,%level_18,%level_19,%level_20);
require "doors_traps_contents.pl";	##NOT done
require "master_monster_table.pl";	##done!
require "dragon_types.pl";			##done!
require "dungeon_levels.pl";		##NOT done
my @everyDungeon_level = ( \%level_1,  \%level_2,  \%level_3,  \%level_4,  \%level_5,
                           \%level_6,  \%level_7,  \%level_8,  \%level_9,  \%level_10,
                           \%level_11, \%level_12, \%level_13, \%level_14, \%level_15,
                           \%level_16, \%level_17, \%level_18, \%level_19, \%level_20 );
my $level = $ARGV[0];
my $size = $ARGV[1];
my $treasure = 0;
my $hasMonster = 0;
my $hasFeature = 0;
my $hasHidTreasure = 0;
my $hasTrap = 0;
my $hasSpecial = 0;

#### functions
sub d {
	return int(rand($_[0]))+1;	
}
sub count {
	if ($_[0] eq "1") {return $_[0]};
	my $volumeDie = 1;
	my $enumerate = 0;
	my @split_on_d = split("d",$_[0]);
	my @subsplit_on_plus = split(/\+|\-/,$split_on_d[1]);
	my $whichDie = $subsplit_on_plus[0];
	if ($split_on_d[0] ne "") {$volumeDie = $split_on_d[0];}
	if (length($subsplit_on_plus[1] // "")) {$enumerate = $subsplit_on_plus[1];}
	if (grep(/\-/,$_[0])) {$enumerate *= -1;}
	my $dieSummation = $enumerate;
	my $loop = (); for ($loop = 1; $loop <= $volumeDie; $loop++) {
		$dieSummation += d($whichDie);
	}
	return $dieSummation
}
sub randToKey {
	my %theHash = %{$_[0]};
	my $theRoll = $_[1];
	my $i; foreach $i (sort {$a <=> $b} keys %theHash) {
		if ($theRoll < $i) {$theRoll = $i;}
		if ($theRoll == $i) {last;}
	}
	return $theRoll;
}
sub howManyMonsters {
	my $countThem = $_[0]; 
	if (ref($_[1]) eq "ARRAY") {
		my @twoMonsters = @{$_[1]};
		if ($_[2] == 0) {return @twoMonsters};
#		print " before : @twoMonsters :";	##
		$twoMonsters[0] = $die_modifier{$countThem}{$twoMonsters[0]};
		$twoMonsters[1] = $die_modifier{$countThem}{$twoMonsters[1]};
#		print " after : @twoMonsters \n";	##
		return @twoMonsters;
	} else {
		my $oneMonster = $_[1];
		if ($_[2] == 0) {return $oneMonster};
#		print " before : $oneMonster :";	##
		$oneMonster = $die_modifier{$countThem}{$oneMonster};
#		print " after : $oneMonster \n";	##
		return $oneMonster;
	}
}

#### do stuff
if (!defined $level) {
	die "You need to specify the dungeon level\n";
} elsif ($level > 20) {
	die "Syntax assumes max of 20 dungeon levels\n";
} elsif (defined $size && $size < $level) {
	die "Syntax puts dungeon level first, then room size\n";
}

### Doors
if (defined $size) {
	print "yup, it's a ",$size,"sqft room\n";
} else {
	print "::not a room::\n";
}

### Contents
#my $loop = (); for ($loop = 5; $loop >= 1; $loop--) {
my $roomContents = randToKey(\%room_contains,d(100));
foreach my $key (keys $room_contains{$roomContents}) {
	my $item = $room_contains{$roomContents}[$key];
	if ($item eq "monster")			{ $hasMonster = 1; }
	 elsif ($item eq "feature")		{ $hasFeature = 1; }
	 elsif ($item eq "hidTreasure")	{ $hasHidTreasure = 1; }
	 elsif ($item eq "trap")		{ $hasTrap = 1; }
	 elsif ($item eq "special")		{ $hasSpecial = 1; }
}

if ($hasSpecial) {
	print "Special: reroll, or staircase, or Shop\n";
}
if ($hasMonster) {
	my %specificMasterTable = %{$master_table{"lvl".$level}};
	my $findScaledLevel = randToKey(\%specificMasterTable,d(100));
	my $scaledLevel = $specificMasterTable{$findScaledLevel}[0];
	my $scaledMonsterCount = $specificMasterTable{$findScaledLevel}[1];
	my %dungeon_level = %{$everyDungeon_level[$scaledLevel-1]};
	my $monster = randToKey(\%dungeon_level,d(100));
	if ($dungeon_level{$monster}[2] eq "dragon") {
		my $dragonColor = randToKey(\%random_dragon,d(100));
		$dungeon_level{$monster}[0] = $random_dragon{$dragonColor}[1][$scaledLevel-1]." ".$random_dragon{$dragonColor}[0]." dragon";
	}
	if ($dungeon_level{$monster}[2] eq "friend") {print "~FRIEND~ ";} else {print "~Monster~ ";}
	if (ref($dungeon_level{$monster}[0]) eq "ARRAY") {
		$dungeon_level{$monster}[1] = [howManyMonsters($scaledMonsterCount,$dungeon_level{$monster}[1],$scaledLevel-$level)];
		print count($dungeon_level{$monster}[1][0])," ",$dungeon_level{$monster}[0][0]," and ";
		print count($dungeon_level{$monster}[1][1])," ",$dungeon_level{$monster}[0][1],"\n";
	} else {
		$dungeon_level{$monster}[1] = howManyMonsters($scaledMonsterCount,$dungeon_level{$monster}[1],$scaledLevel-$level);
		print count($dungeon_level{$monster}[1])," ",$dungeon_level{$monster}[0],"\n";
	}
	if (d(100) < 100*$dungeon_level{$monster}[3]) {$treasure = 1};
	if ($treasure) {$treasure = "table 7-4(p170) for Level ".($level+$dungeon_level{$monster}[4])} else {$treasure = "None"};
	print "  Treasure: ",$treasure,"\n\n";
}
if ($hasFeature) {
	local $" = ", ";
	my $i = 0;
	my $featureType = d(100);
	my @listOfFurnishings = ();
	if ($featureType <= 40 || $featureType > 80) {
		my $minorFurnishings = d(4); for ($i = 1; $i <= $minorFurnishings; $i++) {
			@listOfFurnishings = (@listOfFurnishings, $furnish_minor[d(100)-1]);
		}
	}
	if ($featureType > 40) {
		my $majorFurnishings = d(4); for ($i = 1; $i <= $majorFurnishings; $i++) {
			@listOfFurnishings = (@listOfFurnishings, $furnish_major[d(100)-1]);
		}
	}
	print "You find: @listOfFurnishings \n\n";
}
if ($hasHidTreasure) {
	my $hidingWhere = $treasure_hide{randToKey(\%treasure_hide,d(20))};
	my $guardedBy = $treasure_guard{randToKey(\%treasure_guard,d(20))};
	my $searchDC = 20+$level+count("d10-5");
	print "Hidden by/in ",$hidingWhere," and protected by\n ",$guardedBy," is a treasure for\n";
	print " Level ",$level," that will take a Search DC ",$searchDC," to find.\n\n";
}
if ($hasTrap) {
	#level 1-2, minor trap
	#level 3-4, 50/50 minor or major
	#level 5+, major trap
	print "Uncareful movment triggers a trap. Search DC",20+$level+count("d10-5")," to find.\n\n";
}
#}