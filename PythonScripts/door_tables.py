# modestly modified DMG3 4-4, 4-9 and DMG2 II, V
egress_type = {3: "portal",
               14: "door",
               17: "secret door",
               20: "portcullis"}
egress_status = {20: "", 60: "stuck", 100: "locked"}
material = {30: "simple wooden",
            50: "good wooden",
            70: "strong wooden",
            80: "stone",
            90: "iron",
            93: "slides to side",
            96: "slides down",
            99: "slides up",
            100: "magically reinforced"}
on_which_wall = {7: "opposite", 12: "left", 17: "right", 20: "same"}
is_trapped = {30: True, 100: False}
qualifiers = {"portal": {"hardness": 0, "HP": 0},
              "simple wooden": {"hardness": 5, "HP": 10, "stuck": 13, "locked": 15},
              "good wooden": {"hardness": 5, "HP": 15, "stuck": 16, "locked": 18},
              "strong wooden": {"hardness": 5, "HP": 20, "stuck": 23, "locked": 25},
              "stone": {"hardness": 8, "HP": 60, "stuck": 28, "locked": 28},
              "iron": {"hardness": 10, "HP": 60, "stuck": 28, "locked": 28},
              "wooden portcullis": {"hardness": 5, "HP": 30, "stuck": 25, "locked": 25},
              "iron portcullis": {"hardness": 10, "HP": 60, "stuck": 25, "locked": 25},
              "slides to side": {"break": "d6"},
              "slides down": {"break": "d6"},
              "slides up": {"break": "2d6"},
              "magically reinforced": {"break": "15"},
              "lock": {"hardness": 15, "HP": 30},
              "hinge": {"hardness": 15, "HP": 30}}
