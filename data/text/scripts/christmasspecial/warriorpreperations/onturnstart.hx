var self = args[0];

var slots = self.getvar("damagephaseslots");

// Add Completely Prepared
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

// Add Preview Equipment Button
var eq2 = new elements.Equipment("Preview Equipment");
eq2.temporary_thisturnonly = true;
eq2.finalpos = s.finalpos.clone();
eq2.x = 750;
eq2.finalpos.x = 750;
eq2.height = 332 - 45 * 2;
eq2.y = -eq2.height - 5;
eq2.finalpos.y = 125;
self.equipment.push(eq2);
eq2.equipmentpanel.name = "";
eq2.equipmentpanel.cardhasimage = false;
eq2.equipmentpanel.cardskill.ypos = (eq2.height - 143) / 2;
// this sets up the equipment panel's sprites so that it doesn't do that later
eq2.equipmentpanel.draw(eq2,eq2.tx,eq2.ty,eq2.alpha);
eq2.equipmentpanel.panelimage.dispose();
eq2.equipmentpanel.panelimage = new displayobjects.HaxegonSprite(0,0,"ui/panels/witch/button_panel",0,0);

var act = new motion.actuators.SimpleActuator(eq2,0.5,{y:eq2.finalpos.y});
act._repeat = 0;
act.move();

// Add the damage phase's equipment
var newequipment = self.getvar("damagephaseequipment");

function give(targetfighter, equipname){

  for (e in targetfighter.equipment) {
    e.ready = false;
	e.setvar("e.row", e.row);
	e.setvar("e.column", e.column);
	e.setvar("e.finalpos.x", e.finalpos.x);
	e.setvar("e.finalpos.y", e.finalpos.y);
  }

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
    e.ready = true;
    e.temporary_thisturnonly = true;
    if (e.countdown > 0) e.remainingcountdown = e.countdown;
    e.usedthisbattle = false;
    e.charge = 0;
    e.timesused = 0;
	e.tags.push("fordamagephase");
  }
  
  targetfighter.getequipmentposition();

  for (e in targetfighter.equipment) {
	if (!e.ready) {
      e.ready = true;
	  e.initialpos.x = e.x;
	  e.initialpos.y = e.y;
	  e.finalpos.x = e.getvar("e.finalpos.x");
	  e.finalpos.y = e.getvar("e.finalpos.y");
	  e.row = e.getvar("e.row");
	  e.column = e.getvar("e.column");
	  e.displayrow = e.row;
	  e.displaycolumn = e.column;
	}
  }
  
  for (newequip in newequipment){
    newequip.x = 3845;
    newequip.y = newequip.finalpos.y;
	newequip.ready = false;
  }
}

give(self, newequipment);

self.setvar("isPreviewingDamagePhase", false);
