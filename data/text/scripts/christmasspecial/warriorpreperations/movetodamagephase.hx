
var f = args[0];
var newequipment = f.getvar("damagephaseequipment");

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
    e.ready = true;
    e.temporary_thisturnonly = true;
    if (e.countdown > 0) e.remainingcountdown = e.countdown;
    e.usedthisbattle = false;
    e.charge = 0;
    e.timesused = 0;
  }
  
  targetfighter.getequipmentposition();
  
  for (newequip in newequipment){
    newequip.x = newequip.finalpos.x;
    newequip.y = 2165;
  }
}

//Change equipment
for (i in 0 ... f.equipment.length){
	f.equipment[i].ready = false;
	f.equipment[i].y = -1000;
}

give(f, newequipment);

animateequipmentintoplace(f);