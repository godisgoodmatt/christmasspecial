//Restore the Warrior's Limit break on load, if it's been changed
var self = args[0];

var newlimit = "Barricade";

if(self.varexists("newlimit")){
  newlimit = self.getvar("newlimit");
}

if(newlimit != "" && newlimit != "Barricade"){
  self.changelimitbreak(newlimit);
}
