#A simple transliteration from DMG p.120-21

@die_modifier = {
# multiplier => d_Original => d_New
	0.3 => {
		"1" => "1",
		"d2" => "1",
		"d3" => "1",
		"d3+1" => "1",
		"d4+2" => "d2",
		"d6+3" => "d3",
		"d6+5" => "d3+1"
	},
	0.5 => {
		"1" => "1",
		"d2" => "1",
		"d3" => "1",
		"d3+1" => "d2",
		"d4+2" => "d3",
		"d6+3" => "d3+1",
		"d6+5" => "d4+2"
	},
	0.7 => {
		"1" => "1",
		"d2" => "1",
		"d3" => "d2",
		"d3+1" => "d3",
		"d4+2" => "d3+1",
		"d6+3" => "d4+2",
		"d6+5" => "d6+3"
	},
	1.5 => {
		"1" => "d2",
		"d2" => "d3",
		"d3" => "d3+1",
		"d3+1" => "d4+2",
		"d4+2" => "d6+3",
		"d6+3" => "d6+5",
		"d6+5" => "d4+10"
	},
	2 => {
		"1" => "d3",
		"d2" => "d3+1",
		"d3" => "d4+2",
		"d3+1" => "d6+3",
		"d4+2" => "d6+5",
		"d6+3" => "d4+10",
		"d6+5" => "d100+100"
	},
	3 => {
		"1" => "d3+1",
		"d2" => "d4+2",
		"d3" => "d6+3",
		"d3+1" => "d6+5",
		"d4+2" => "d4+10",
		"d6+3" => "d100+100",
		"d6+5" => "d100+100"
	},
	4 => {
		"1" => "d4+2",
		"d2" => "d6+3",
		"d3" => "d6+5",
		"d3+1" => "d4+10",
		"d4+2" => "d100+100",
		"d6+3" => "d100+100",
		"d6+5" => "d100+100"
	}	
}

@master_hash = {
# dungeon_level => d% => [encounter_level,modifier]
	"lvl1" => {
		 5 => [1,1],	10 => [1,1],
		20 => [1,1],	30 => [1,1],
		70 => [1,1],	80 => [2,0.5],
		90 => [2,0.5],	100 => [3,0.3]
	},
	"lvl2" => {
		 5 => [1,2],	10 => [1,2],
		20 => [1,2],	30 => [2,1],
		70 => [2,1],	80 => [3,0.7],
		90 => [4,0.5],	100 => [5,0.3]
	},
	"lvl3" => {
		 5 => [1,3],	10 => [1,3],
		20 => [2,1.5],	30 => [2,1.5],
		70 => [3,1],	80 => [4,0.7],
		90 => [5,0.5],	100 => [6,0.3]
	},
	"lvl4" => {
		 5 => [1,4],	10 => [1,4],
		20 => [2,2],	30 => [3,1.5],
		70 => [4,1],	80 => [5,0.7],
		90 => [6,0.5],	100 => [7,0.3]
	},
	"lvl5" => {
		 5 => [2,4],	10 => [2,3],
		20 => [3,2],	30 => [4,1.5],
		70 => [5,1],	80 => [6,0.7],
		90 => [7,0.5],	100 => [8,0.3]
	},
	"lvl6" => {
		 5 => [2,4],	10 => [3,3],
		20 => [4,2],	30 => [5,1.5],
		70 => [6,1],	80 => [7,0.7],
		90 => [8,0.5],	100 => [9,0.3]
	},
	"lvl7" => {
		 5 => [3,4],	10 => [4,3],
		20 => [5,2],	30 => [6,1.5],
		70 => [7,1],	80 => [8,0.7],
		90 => [9,0.5],	100 => [10,0.3]
	},
	"lvl8" => {
		 5 => [4,4],	10 => [5,3],
		20 => [6,2],	30 => [7,1.5],
		70 => [8,1],	80 => [9,0.7],
		90 => [10,0.5],	100 => [11,0.3]
	},
	"lvl9" => {
		 5 => [5,4],	10 => [6,3],
		20 => [7,2],	30 => [8,1.5],
		70 => [9,1],	80 => [10,0.7],
		90 => [11,0.5],	100 => [12,0.3]
	},
	"lvl10" => {
		 5 => [6,4],	10 => [7,3],
		20 => [8,2],	30 => [9,1.5],
		70 => [10,1],	80 => [11,0.7],
		90 => [12,0.5],	100 => [13,0.3]
	},
	"lvl11" => {
		 5 => [7,4],	10 => [8,3],
		20 => [9,2],	30 => [10,1.5],
		70 => [11,1],	80 => [12,0.7],
		90 => [13,0.5],	100 => [14,0.3]
	},
	"lvl12" => {
		 5 => [8,4],	10 => [9,3],
		20 => [10,2],	30 => [10,1.5],
		70 => [12,1],	80 => [12,0.7],
		90 => [14,0.5],	100 => [14,0.3]
	},
	"lvl13" => {
		 5 => [9,4],	10 => [10,3],
		20 => [11,2],	30 => [12,1.5],
		70 => [13,1],	80 => [14,0.7],
		90 => [15,0.5],	100 => [16,0.3]
	},
	"lvl14" => {
		 5 => [10,4],	10 => [11,3],
		20 => [12,2],	30 => [13,1.5],
		70 => [14,1],	80 => [15,0.7],
		90 => [16,0.5],	100 => [17,0.3]
	},
	"lvl15" => {
		 5 => [11,4],	10 => [12,3],
		20 => [13,2],	30 => [14,1.5],
		70 => [15,1],	80 => [16,0.7],
		90 => [17,0.5],	100 => [18,0.3]
	},
	"lvl16" => {
		 5 => [12,4],	10 => [13,3],
		20 => [14,2],	30 => [15,1.5],
		70 => [16,1],	80 => [17,0.7],
		90 => [18,0.5],	100 => [19,0.3]
	},
	"lvl17" => {
		 5 => [13,4],	10 => [14,3],
		20 => [15,2],	30 => [16,1.5],
		70 => [17,1],	80 => [18,0.7],
		90 => [19,0.5],	100 => [20,0.3]
	},
	"lvl18" => {
		 5 => [14,4],	10 => [15,3],
		20 => [16,2],	30 => [17,1.5],
		70 => [18,1],	80 => [19,0.7],
		90 => [20,0.5],	100 => [20,0.5]
	},
	"lvl19" => {
		 5 => [15,4],	10 => [16,3],
		20 => [17,2],	30 => [18,1.5],
		70 => [19,1],	80 => [19,1],
		90 => [20,0.7],	100 => [20,0.7]
	},
	"lvl20" => {
		 5 => [16,4],	10 => [17,3],
		20 => [18,2],	30 => [19,1.5],
		70 => [20,1],	80 => [20,1],
		90 => [20,1],	100 => [20,1]
	}
}
