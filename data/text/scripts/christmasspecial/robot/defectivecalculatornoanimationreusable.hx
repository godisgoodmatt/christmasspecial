// This script is a result of Tonite
var self = args[0];
var e = args[1];

var reuseablecopy:Equipment = self.createskillcard("Defective Calculator", []);
reuseablecopy.x = e.x;
reuseablecopy.y = e.y;
e.show = false;
e.temporary_thisturnonly = true;

self.equipment.push(reuseablecopy);

var displays = e.getvar("displays");
reuseablecopy.setvar("displays",displays);

for (display in displays) {
	self.equipment.remove(display);
	self.equipment.push(display);
}