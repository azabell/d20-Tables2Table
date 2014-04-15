# contents: an amalgam of DMG3 table 4-10 and DMG2 table V.F.
contents = {18: ["monster"],
            44: ["monster", "feature"],
            45: ["monster", "hidden_treasure"],
            46: ["monster", "trap"],
            47: ["monster", "trap", "hidden_treasure"],
            48: ["monster", "feature", "trap"],
            49: ["monster", "hidden_treasure", "trap"],
            50: ["monster", "feature", "hidden_treasure", "trap"],
            55: ["special"],
            76: ["feature"],
            77: ["feature", "hidden_treasure"],
            78: ["feature", "trap"],
            79: ["feature", "trap", "hidden_treasure"],
            80: ["hidden_treasure"],
            81: ["hidden_treasure", "trap"],
            82: ["trap"],
            100: ["nothing"]}
# furnish_minor: a simple transliteration from DMG3
furnish_minor = [
    "Alcove", "Altar", "Arch", "Arrow slit(wall)/Murder hole (ceiling)", "Balcony",
    "Barrel", "Bed", "Bench", "Bookcase", "Brazier",
    "Cage", "Caldron", "Carpet", "Carving", "Casket",
    "Catwalk", "Chair", "Chandelier", "Charcoal bin", "Chasm",
    "Chest", "Chest of drawers", "Chute", "Coat rack", "Collapsed wall",
    "Crate", "Cupboard", "Curtain", "Divan", "Dome",
    "Door (broken)", "Dung heap", "Evil symbol", "Fallen stones", "Firepit",
    "Fireplace", "Font", "Forge", "Fountain", "Furniture (broken)",
    "Gong", "Hay (pile)", "Hole", "Hole (blasted)", "Idol",
    "Iron bars", "Iron maiden", "Kiln", "Ladder", "Ledge",
    "Loom", "Loose masonry", "Manacles", "Manger", "Mirror",
    "Mosaic", "Mound of rubble", "Oven", "Overhang", "Painting",
    "Partially collapsed ceiling", "Pedestal", "Peephole", "Pillar", "Pillory",
    "Pit (shallow)", "Platform", "Pool", "Portcullis", "Rack",
    "Ramp", "Recess", "Relief", "Sconce", "Screen",
    "Shaft", "Shelf", "Shrine", "Spinning wheel", "Stall or pen",
    "Statue", "Statue (toppled)", "Steps", "Stool", "Stuffed beast",
    "Sunken area", "Table (large)", "Table (small)", "Tapestry", "Throne",
    "Trash (pile)", "Tripod", "Trough", "Tub", "Wall basin",
    "Wardrobe", "Weapon rack", "Well", "Winch and pulley", "Workbench"
]
# furnish_major: a simple transliteration from DMG3
furnish_major = [
    "Anvil", "Ash", "Backpack", "Bale (straw)", "Bellows",
    "Belt", "Bits of fur", "Blanket", "Bloodstain", "Bones (humanoid)",
    "Bones (nonhumanoid)", "Books", "Boots", "Bottle", "Box",
    "Branding iron", "Broken glass", "Bucket", "Candle", "Candelabra",
    "Playing cards", "Chains", "Claw marks", "Cleaver", "Clothing",
    "Cobwebs", "Cold spot", "Corpse (adventurer)", "Corpse (monster)", "Cracks",
    "Dice", "Discarded weapons", "Dishes", "Dripping water", "Drum",
    "Dust", "Engraving", "Equipment (broken)", "Equipment (usable)", "Flask",
    "Flint and Tinder", "Foodstuffs (spoiled)", "Foodstufs (edible)", "Fungus", "Grinder",
    "Hook", "Horn", "Hourglass", "Insects", "Jar",
    "Keg", "Key", "Lamp", "Lantern", "Markings",
    "Mold", "Mud", "Mug", "Musical instrument", "Mysterious stain",
    "Nest (animal)", "Odor (unidentifiable)", "Oil (fuel)", "Oil (scented)", "Paint",
    "Paper", "Pillows", "Smoker's pipe", "Pole", "Pot",
    "Pottery shard", "Pouch", "Puddle (water)", "Rags", "Razor",
    "Rivulet", "Ropes", "Runes", "Sack", "Scattered stones",
    "Scorch marks", "Scroll (nonmagic)", "Scroll case (empty)", "Skull", "Slime",
    "Sound (unexplained)", "Spices", "Spike", "Teeth", "Tongs",
    "Tools", "Torch (stub)", "Tray", "Trophy", "Twine",
    "Urn", "Utensils", "Whetstone", "Wood scraps", "Words (scrawled)"
]
# treasure_hiding_in: modestly modified from DMG2
treasure_hiding_in = {3: "a room feature (or under the floor)",
                      5: "a disguise spell",
                      8: "a secret space inside a container",
                      10: "plain view",
                      13: "a loose stone in the floor",
                      15: "a loose stone in the wall",
                      20: "an attached 5x5 room"}
# treasure_guarded_by: modestly modified from DMG2
treasure_guarded_by = {10: "the clever hiding place",
                       12: "contact poison (DC n)",
                       14: "dart poison (DC n)",
                       16: "trapdoor in front of object (d6 DC 10)",
                       18: "trapdoor randomly in the room (d6 DC 10)",
                       20: "a stone dropping from the ceiling (d6 DC 10)"}
# trapLow: #a simple transliteration from DMG3
# trapHigh: #a simple transliteration from DMG3

# monsterDiceModifier: #a simple transliteration from DMG3 p.120-21.
# given key1, change the original dieRoll (key2) to the new dieRoll (value2)
monsterDiceModifier = {
    0.3: {"1": "1",
          "d2": "1",
          "d3": "1",
          "d3+1": "1",
          "d4+2": "d2",
          "d6+3": "d3",
          "d6+5": "d3+1" },
    0.5: {"1": "1",
          "d2": "1",
          "d3": "1",
          "d3+1": "d2",
          "d4+2": "d3",
          "d6+3": "d3+1",
          "d6+5": "d4+2" },
    0.7: {"1": "1",
          "d2": "1",
          "d3": "d2",
          "d3+1": "d3",
          "d4+2": "d3+1",
          "d6+3": "d4+2",
          "d6+5": "d6+3" },
    1.5: {"1": "d2",
          "d2": "d3",
          "d3": "d3+1",
          "d3+1": "d4+2",
          "d4+2": "d6+3",
          "d6+3": "d6+5",
          "d6+5": "d4+10" },
    2: {"1": "d3",
        "d2": "d3+1",
        "d3": "d4+2",
        "d3+1": "d6+3",
        "d4+2": "d6+5",
        "d6+3": "d4+10",
        "d6+5": "d100+100" },
    3: {"1": "d3+1",
        "d2": "d4+2",
        "d3": "d6+3",
        "d3+1": "d6+5",
        "d4+2": "d4+10",
        "d6+3": "d100+100",
        "d6+5": "d100+100" },
    4: {"1": "d4+2",
        "d2": "d6+3",
        "d3": "d6+5",
        "d3+1": "d4+10",
        "d4+2": "d100+100",
        "d6+3": "d100+100",
        "d6+5": "d100+100" }
}