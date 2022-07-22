// This script is a result of Tonite
var self = args[0];
var e = args[1];

var displays = [];

var historytext = new elements.Equipment("Defective Display");
historytext.displayname = "";
historytext.fulldescription = "Roll History:";
historytext.height = 0;
historytext.x = e.x;
historytext.y = e.y + e.height / 2 + 3 * 45;
historytext.temporary_thisturnonly = true;
self.equipment.push(historytext);
displays.push(historytext);

var dicecount = new elements.Equipment("Defective Display");
dicecount.displayname = "";
dicecount.fulldescription = "Dice Count: " + self.getvar("numrolls");
dicecount.height = 0;
dicecount.x = e.x;
dicecount.y = e.y + 3 * e.height / 2 - 8 * 45 + 30;
dicecount.temporary_thisturnonly = true;
self.equipment.push(dicecount);
displays.push(dicecount);

var errorchance = new elements.Equipment("Defective Chance Display");
errorchance.displayname = "";
errorchance.fulldescription = "Error Chance: " + self.getvar("errorchance") + "%";
errorchance.height = 0;
errorchance.x = e.x;
errorchance.y = e.y + 3 * e.height / 2 - 3 * 45 + 15;
errorchance.temporary_thisturnonly = true;
self.equipment.push(errorchance);
displays.push(errorchance);

var defectiverollhistoryleft = new elements.Equipment("Defective Roll History Display");
defectiverollhistoryleft.setvar("stride",0);
defectiverollhistoryleft.displayname = "";
defectiverollhistoryleft.fulldescription = "";
defectiverollhistoryleft.height = 0;
defectiverollhistoryleft.x = e.x - 45 * 4 - 30;
defectiverollhistoryleft.y = e.y + e.height - 90;
defectiverollhistoryleft.temporary_thisturnonly = true;
self.equipment.push(defectiverollhistoryleft);
displays.push(defectiverollhistoryleft);

var defectiverollhistoryright = new elements.Equipment("Defective Roll History Display");
defectiverollhistoryright.setvar("stride",1);
defectiverollhistoryright.displayname = "";
defectiverollhistoryright.fulldescription = "";
defectiverollhistoryright.height = 0;
defectiverollhistoryright.x = e.x + 45 * 4 - 30;
defectiverollhistoryright.y = e.y + e.height - 90;
defectiverollhistoryright.temporary_thisturnonly = true;
self.equipment.push(defectiverollhistoryright);
displays.push(defectiverollhistoryright);

var defectivesurvivalhistoryleft = new elements.Equipment("Defective Survival History Display");
defectivesurvivalhistoryleft.setvar("stride",0);
defectivesurvivalhistoryleft.displayname = "";
defectivesurvivalhistoryleft.fulldescription = "";
defectivesurvivalhistoryleft.height = 0;
defectivesurvivalhistoryleft.x = e.x - 45 * 4 + 30;
defectivesurvivalhistoryleft.y = e.y + e.height - 90;
defectivesurvivalhistoryleft.temporary_thisturnonly = true;
self.equipment.push(defectivesurvivalhistoryleft);
displays.push(defectivesurvivalhistoryleft);

var defectivesurvivalhistoryright = new elements.Equipment("Defective Survival History Display");
defectivesurvivalhistoryright.setvar("stride",1);
defectivesurvivalhistoryright.displayname = "";
defectivesurvivalhistoryright.fulldescription = "";
defectivesurvivalhistoryright.height = 0;
defectivesurvivalhistoryright.x = e.x + 45 * 4 + 30;
defectivesurvivalhistoryright.y = e.y + e.height - 90;
defectivesurvivalhistoryright.temporary_thisturnonly = true;
self.equipment.push(defectivesurvivalhistoryright);
displays.push(defectivesurvivalhistoryright);

e.setvar("displays",displays);