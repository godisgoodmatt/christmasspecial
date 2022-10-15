// This script is a result of Tonite
var self = args[0];
var reset = args[1];
var beforestartturn = args[2];

for(e in self.getcurrentequipment()) {
    var upgraded = e.namemodifier == '+';
    var upgradeType = new elements.Equipment(e.name).upgradetype;
    trace(upgradeType + " " + upgraded);

	if (e.varexists("oldslots") && beforestartturn) {
		e.changeslots(e.getvar("oldslots"));
	}

	var position = ((e.column * 2) + e.row + 1);
	var size = e.size;

	if (e.slots[0] == "COMBINATION") {
		// Case of combination
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
		// Case of multiple dice slots
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
			if (reset) {
				e.setvar("combination",combo);
			}
		}
	} else {
		if (upgraded && (upgradeType == "simplify" || upgradeType == "increaserange")) {
			// Upgrade requirements for any equipment that gets upgraded via simplify/complicate usually
			if (position % 2 == 0) {
				e.changeslots(["EVEN"]);
			}
			else {
				e.changeslots(["ODD"]);
			}
		} else {
			// Basic case: one dice slot
			e.changeslots(["REQUIRE" + position]);
		}
	}
}