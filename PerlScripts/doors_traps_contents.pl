#Room Contents are an amalgam of DMG3 table 4-10 and DMG2 table V.F.
#Doors, Traps, and Furnishings are DMG3
#Hidden Treasure details are modified DMG2

#%door_type; %trap_low; %trap_high; 
%room_contains = (
	18 => ["monster"],
	44 => ["monster","feature"],
	45 => ["monster","hidTreasure"],
	46 => ["monster","trap"],
	47 => ["monster","feature","hidTreasure"],
	48 => ["monster","feature","trap"],
	49 => ["monster","hidTreasure","trap"],
	50 => ["monster","feature","hidTreasure","trap"],
	55 => ["special"],
	76 => ["feature"],
	77 => ["feature","hidTreasure"],
	78 => ["feature","trap"],
	79 => ["feature","hidTreasure","trap"],
	80 => ["hidTreasure"],
	81 => ["hidTreasure","trap"],
	82 => ["trap"],
	100 => ["empty"]
);

%door_type = (
);

%trap_low = (
);
%trap_high = (
);

@furnish_minor = (
	"Alcove", "Altar", "Arch", "Arrow slit(wall)/Murder hole (ceiling)", "Balcony", "Barrel", "Bed", "Bench", "Bookcase", "Brazier",
	"Cage", "Caldron", "Carpet", "Carving", "Casket", "Catwalk", "Chair", "Chandelier", "Charcoal bin", "Chasm",
	"Chest", "Chest of drawers", "Chute", "Coat rack", "Collapsed wall", "Crate", "Cupboard", "Curtain", "Divan", "Dome",
	"Door (broken)", "Dung heap", "Evil symbol", "Fallen stones", "Firepit", "Fireplace", "Font", "Forge", "Fountain", "Furniture (broken)",
	"Gong", "Hay (pile)", "Hole", "Hole (blasted)", "Idol", "Iron bars", "Iron maiden", "Kiln", "Ladder", "Ledge",
	"Loom", "Loose masonry", "Manacles", "Manger", "Mirror", "Mosaic", "Mound of rubble", "Oven", "Overhang", "Painting",
	"Partially collapsed ceiling", "Pedestal", "Peephole", "Pillar", "Pillory", "Pit (shallow)", "Platform", "Pool", "Portcullis", "Rack",
	"Ramp", "Recess", "Relief", "Sconce", "Screen", "Shaft", "Shelf", "Shrine", "Spinning wheel", "Stall or pen",
	"Statue", "Statue (toppled)", "Steps", "Stool", "Stuffed beast", "Sunken area", "Table (large)", "Table (small)", "Tapestry", "Throne",
	"Trash (pile)", "Tripod", "Trough", "Tub", "Wall basin", "Wardrobe", "Weapon rack", "Well", "Winch and pulley", "Workbench"
);
@furnish_major = (
	"Anvil", "Ash", "Backpack", "Bale (straw)", "Bellows", "Belt", "Bits of fur", "Blanket", "Bloodstain", "Bones (humanoid)",
	"Bones (nonhumanoid)", "Books", "Boots", "Bottle", "Box", "Branding iron", "Broken glass", "Bucket", "Candle", "Candelabra",
	"Playing cards", "Chains", "Claw marks", "Cleaver", "Clothing", "Cobwebs", "Cold spot", "Corpse (adventurer)", "Corpse (monster)", "Cracks",
	"Dice", "Discarded weapons", "Dishes", "Dripping water", "Drum", "Dust", "Engraving", "Equipment (broken)", "Equipment (usable)", "Flask",
	"Flint and Tinder", "Foodstuffs (spoiled)", "Foodstufs (edible)", "Fungus", "Grinder", "Hook", "Horn", "Hourglass", "Insects", "Jar",
	"Keg", "Key", "Lamp", "Lantern", "Markings", "Mold", "Mud", "Mug", "Musical instrument", "Mysterious stain", 
	"Nest (animal)", "Odor (unidentifiable)", "Oil (fuel)", "Oil (scented)", "Paint", "Paper", "Pillows", "Smoker's pipe", "Pole", "Pot",
	"Pottery shard", "Pouch", "Puddle (water)", "Rags", "Razor", "Rivulet", "Ropes", "Runes", "Sack", "Scattered stones",
	"Scorch marks", "Scroll (nonmagic)", "Scroll case (empty)", "Skull", "Slime", "Sound (unexplained)", "Spices", "Spike", "Teeth", "Tongs",
	"Tools", "Torch (stub)", "Tray", "Trophy", "Twine", "Urn", "Utensils", "Whetstone", "Wood scraps", "Words (scrawled)"
);

%treasure_hide = (
	3 => "a room feature (or under the floor)",
	5 => "a disguise spell",
	8 => "a secret space inside a container",
	10 => "plain view",
	13 => "a loose stone in the floor",
	15 => "a loose stone in the wall",
	20 => "an attached 5x5 room"
); 
%treasure_guard = (
	10 => "the clever hiding place",
	12 => "contact poison (DC n)",
	14 => "dart poison (DC n)",
	16 => "trapdoor in front of object (d6 DC 10)",
	18 => "trapdoor randomly in the room (d6 DC 10)",
	20 => "a stone dropping from the ceiling (d6 DC 10)"
);

1;