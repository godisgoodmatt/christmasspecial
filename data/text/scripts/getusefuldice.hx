//Return a useful dice - one that can be used on something we have equipped
var f = args[0];

var prioritylist = [];
var backuplist = [];

//Needed for completing Doubles
//var currentdicelist = [];
//TO DO

var eqlist = [];
if(f.equipment.length > 0){
  for(eq in f.equipment){
    if(eq.ready && eq.availablethisturn && eq.shockedsetting == 0 && eq.getslots().length > 0){
      eqlist.push(eq);
    }
  }
}

if(self.hasstolencard){
  if(self.hasstolencard.ready && self.hasstolencard.availablethisturn && self.hasstolencard.shockedsetting == 0 && self.hasstolencard.getslots().length > 0){
    eqlist.push(self.stolencard); //Also consider the stolen card
  }
}

if(eqlist.length > 0){
  for(eq in eqlist){
    var slots = eq.getslots();
    if(slots.length > 0){
      if(slots.length > 1){
        //Deal with cases with multiple slots
        //TO DO
      }else{
        switch(slots[0]){
          case "NORMAL": backuplist.push(6);
          case "REQUIRE1": prioritylist.push(1);
          case "REQUIRE2": prioritylist.push(2);
          case "REQUIRE3": prioritylist.push(3);
          case "REQUIRE4": prioritylist.push(4);
          case "REQUIRE5": prioritylist.push(5);
          case "REQUIRE6": prioritylist.push(6);
          case "EVEN": backuplist.push(6);
          case "ODD": backuplist.push(5);
          case "MAX1": backuplist.push(1);
          case "MAX2": backuplist.push(2);
          case "MAX3": backuplist.push(3);
          case "MAX4": backuplist.push(4);
          case "MAX5": backuplist.push(5);
          case "MIN2": backuplist.push(6);
          case "MIN3": backuplist.push(6);
          case "MIN4": backuplist.push(6);
          case "MIN5": backuplist.push(6);
          case "MIN6": backuplist.push(6);
        }
      }
    }
  }
}

var returnvalue = 1;
if(prioritylist.length > 0){
  returnvalue = rand(prioritylist);
}else if(backuplist.length > 0){
  returnvalue = rand(backuplist);
}else{
  returnvalue = rand([1,2,3,4,5,6]);
}

return returnvalue;

