var self = args[0];
var turn = args[1];
var target = args[2];

var data = loaddata("christmasspecial/warriorpreperations/damagephaseslevel" + self.level);

var damagephase = rand(data);

var eqlist = damagephase.equipment.split("|");
var slots = damagephase.slots.split("|");

var eqs = [];

for (c in Deck.getcards("all")) {
	c.equipment.onceperbattle = true;
	c.equipment.usedthisbattle = true;
}

self.setvar("indamagephase", false);

for (eqname in eqlist) {
	var eq = new elements.Equipment(eqname);
	
	eq.temporary_thisturnonly = true;

	Deck.createcopyondrawpile(self, eq);
}

self.setvar("damagephaseequipment",eqlist);

var delay = 0.2;

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
act.move();