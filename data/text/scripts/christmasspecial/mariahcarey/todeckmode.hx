var self = args[0];

self.changetodecklayout(self.getvar("cards").split(","));

var skillcard = self.createskillcard(self.getvar("skillcard"), []);
self.equipment.push(skillcard);

// This just gives the card outlines
Deck.sethandsize(3,true);

animateequipmentintoplace(self);
