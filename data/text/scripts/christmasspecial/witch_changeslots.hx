var self = args[0];
var reset = args[1];

for(e in self.getcurrentequipment()) {
	var position = ((e.column * 2) + e.row + 1);

	if (e.slots[0] == "COMBINATION") {
		var res = -1;
		for (i in 0...e.tags.length) {
			res = e.tags[i].indexOf("combination:");
			if (res != -1) {
				res = i;
				break;
			}
		}
		var combo = "";
		if (res == -1) {
			combo += position;
			combo += position;
			e.addtag("combination:" + combo);
		} else {
			var count = e.tags[res].length - 12;
			for (i in 0...count) {
				combo += position;
			}
			e.tags[res] = "combination:" + combo;
		}
		if (reset) {
			e.setvar("combination",combo);
		}
	} else if (e.slots.length > 1) {
		var strictmode = true;
		for (s in e.slots) {
			if (s == "DOUBLES") {
				break;
			}
			if (s != "REQUIRE1" && s != "REQUIRE2" && s != "REQUIRE3" && s != "REQUIRE4" && s != "REQUIRE5" && s != "REQUIRE6") {
				trace(s);
				strictmode = false;
				break;
			}
		}
		if (strictmode) {
			var res = [];
			for (s in e.slots) {
				res.push("REQUIRE" + position);
			}
			e.changeslots(res);
		} else {
			var combo = "";
			for (s in e.slots) {
				combo += position;
			}
			e.addtag("combination:" + combo);
			e.changeslots(["COMBINATION"]);
		}
	} else {
		e.changeslots(["REQUIRE" + position]);
	}
}