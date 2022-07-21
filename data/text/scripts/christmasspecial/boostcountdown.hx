//Apply a boosted countdown to a single piece of equipment
var fighter = args[0];
var equipment = args[1];
var amount = args[2];

if(equipment == null) return;
if(fighter == null) return;
if(amount == 0) return;

if(!equipment.ready || !equipment.availablethisturn || equipment.shockedsetting > 0) return;

if (equipment.countdown > 0 && equipment.remainingcountdown > 0) {
  var tempdice = new elements.Dice();
  if (amount == -1){
    tempdice.basevalue = equipment.remainingcountdown;
    if (tempdice.basevalue > 6){
      equipment.remainingcountdown = 6;
      tempdice.basevalue = 6;
    }
  }else{
    tempdice.basevalue = amount;
  }
  fighter.dicepool.push(tempdice);
  equipment.assigndice(tempdice, -1);
  
  //Add a delay to AI if they're attempting this
  var delayunit = (equipment.remainingcountdown < tempdice.basevalue) ? 
                  equipment.remainingcountdown : tempdice.basevalue;
  var newdelay = (0.15 + (0.12 * delayunit));
  delay(newdelay);
}

