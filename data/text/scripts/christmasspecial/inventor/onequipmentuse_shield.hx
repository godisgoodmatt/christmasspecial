// Code by Ed x 7

trace("TEST EQUIPMENT USE");

var fighter = args[0];
var equipment = args[1];

// Identify the equipment used, and the top-right value on the equipment.

// Remove the former status.
fighter.removestatus("inventor_shield");

// Add the new status.
fighter.addstatus("inventor_shield", equipment.totalusesremaining);

trace(equipment);