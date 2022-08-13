var self = args[0];

var slots = self.getvar("damagephaseslots");

var eq = new elements.Equipment("Completely Prepared");
var s = self.getskillcard();
eq.temporary_thisturnonly = true;
eq.finalpos = s.finalpos.clone();
eq.x = s.x;
eq.height -= 45 * 3;
eq.y = 2165;
eq.finalpos.y = s.y + s.height - eq.height;
self.equipment.push(eq);

eq.changeslots(slots);
for (p in eq.slotpositions) {
	p.y -= 45;
}

eq.descriptiontextoffset = 30;

var act = new motion.actuators.SimpleActuator(eq,0.5,{y:eq.finalpos.y});
act._repeat = 0;
act.move();