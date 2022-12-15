
var f = args[0];
var preview = args[1];
/*var newequipment = f.getvar("damagephaseequipment");

function give(targetfighter, equipname){
  var newequipment = [];
  for (j in 0 ... equipname.length){
    var e = new elements.Equipment(equipname[j]);
    newequipment.push(e);
    var placed:Bool = false;
    if(targetfighter.equipment.length > 0){
      for (i in 0 ... targetfighter.equipment.length){
        if(!placed){
          if (targetfighter.equipment[i].skillcard != ""){
            targetfighter.equipment.insert(i, e);
            placed = true;
          }
        }
      }
    }
    if (!placed)	targetfighter.equipment.push(e);
    e.equippedby = targetfighter;
    e.ready = false;
    e.temporary_thisturnonly = true;
    if (e.countdown > 0) e.remainingcountdown = e.countdown;
    e.usedthisbattle = false;
    e.charge = 0;
    e.timesused = 0;
	e.tags.push("fordamagephase");
  }
  
  targetfighter.getequipmentposition();
  
  for (newequip in newequipment){
    newequip.x = 3845;
    newequip.y = newequip.finalpos.y;
  }
}

give(f, newequipment);*/

//Change equipment
for (e in f.equipment){
	if (e.hastag("fordamagephase")) {
		if (!preview) e.ready = true;
		e.show = true;
		var act = new motion.actuators.SimpleActuator(e,0.5,{x:e.finalpos.x});
		act._repeat = 0;
		act.move();
		while (e.y < 0) {
			e.y += 2165;
		}
	} else if (!(preview && e.name == "Preview Equipment")) {
		if (preview) {
			e.setvar("e.ready", e.ready);
		} else {
			for (i in 0...e.tags.length) {
				var res = e.tags[i].indexOf("transitioneffect:");
				if (res != -1) {
					var transitioneffectstring = e.tags[i].substr("transitioneffect:".length);
					inflictself(transitioneffectstring, 1);
				}
				res = e.tags[i].indexOf("transitionsound:");
				if (res != -1) {
					var transitionsoundstring = e.tags[i].substr("transitionsound:".length);
					sfx(transitionsoundstring);
				}
			}
		}
		e.ready = false;
		var act = new motion.actuators.SimpleActuator(e,0.5,{x:-e.width - 5});
		act._repeat = 0;
		act.move();
	}
}

f.applyequipmentcurses();

//f.fetchequipment("right");