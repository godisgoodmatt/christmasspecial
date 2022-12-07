var self = args[0];

var data = loaddata("christmasspecial/warriorpreperations/damagephaseslevel" + self.level);

var bonusEquipment = [];

for (e in self.equipment) {
	for (i in 0...e.tags.length) {
		var res = e.tags[i].indexOf("bonusphases:");
		if (res != -1) {
			var bonussetsstring = e.tags[i].substr("bonusphases:".length);
			data = data.concat(loaddata(bonussetsstring));
		}
		res = e.tags[i].indexOf("bonusequipment:");
		if (res != -1) {
			var bonuseqsstring = e.tags[i].substr("bonusequipment:".length);
			trace(bonuseqsstring);
			bonusEquipment = bonusEquipment.concat(bonuseqsstring.split("/"));
		}
	}
}

if (self.varexists("previousloadout")) {
	var previousloadout = self.getvar("previousloadout");
	var previousloadoutobj = {};
	for (item in data) {
		if (item.equipment == previousloadout) {
			previousloadoutobj = item;
		}
	}
	if (previousloadoutobj != {}) data.remove(previousloadoutobj);
}

var damagephase = rand(data);
self.setvar("previousloadout", damagephase.equipment);

var eqlist = bonusEquipment.concat(damagephase.equipment.split("|"));
var slots = damagephase.slots.split("|");

var eqs = [];

for (c in Deck.getcards("all")) {
	c.equipment.onceperbattle = true;
	c.equipment.usedthisbattle = true;
}

for (eqname in eqlist) {
	var eq = new elements.Equipment(eqname);
	
	eq.temporary_thisturnonly = true;
	if (eq.hastag("finale")){
		eq.removetag("finale");
	}

	Deck.createcopyondrawpile(self, eq);
}

self.setvar("damagephaseequipment",eqlist);
self.setvar("damagephaseslots",slots);

/*var delay = 0.2;

if (turn == 1 && target.innate.length == 0) {
	delay = 0.75;
}

delay += 0.1 * (self.dice + self.extradice + self.bonusdice);

var act = new motion.actuators.SimpleActuator(null,delay,null);
var s = new elements.Skill("Against all odds_old");
s.script="
	var eq = new elements.Equipment(\"Completely Prepared\");
	var s = self.getskillcard();
	eq.temporary_thisturnonly = true;
	eq.finalpos = s.finalpos.clone();
	eq.x = s.initialpos.x;
	eq.height -= 45 * 3;
	eq.y = s.y + s.height - eq.height;
	eq.finalpos.y = eq.y;
	self.equipment.push(eq);

	eq.changeslots([\"" + slots.join("\",\"") + "\"]);
	for (p in eq.slotpositions) {
		p.y -= 45;
	}

	eq.descriptiontextoffset = 30;

	var act = new motion.actuators.SimpleActuator(eq,0.5,{x:eq.finalpos.x});
	act._repeat = 0;
	act.move();
";
act._repeat = 1;
act.onComplete(s.execute,[self,null]);
act.move();*/