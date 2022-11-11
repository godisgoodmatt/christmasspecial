// This script is a result of Tonite
var self = args[0];
var e = args[1];

var reuseablecopy:Equipment = e.copy();

reuseablecopy.height = e.height;

var panel = e.equipmentpanel;
e.equipmentpanel = reuseablecopy.equipmentpanel;
reuseablecopy.equipmentpanel = panel;

self.equipment.push(reuseablecopy);