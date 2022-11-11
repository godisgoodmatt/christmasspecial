var f = args[0];

//Change equipment
for (e in f.equipment){
	if (e.hastag("fordamagephase")) {
		e.ready = false;
		var act = new motion.actuators.SimpleActuator(e,0.5,{x:3845});
		act._repeat = 0;
		act.move();
	} else if (!(e.name == "Preview Equipment")) {
		e.ready = e.getvar("e.ready");
		var act = new motion.actuators.SimpleActuator(e,0.5,{x:e.finalpos.x});
		act._repeat = 0;
		act.move();
		if (e.y < 0) {
			e.y += 2165;
		}
	}
}
