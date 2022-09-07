var self = args[0];

self.changetodecklayout(shuffle(self.getvar("cards").split(",")));

var skillcard = self.createskillcard("Jester Deck", []);
self.equipment.push(skillcard);

self.setvar("equipmentstash", "");
self.setvar("equipmentupgraded", "");

// This just gives the card outlines
Deck.sethandsize(3,true);

animateequipmentintoplace(self);
