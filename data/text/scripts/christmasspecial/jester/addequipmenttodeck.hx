//Jester: Add a particular card to your deck and draw it
//Borrowed from reunion <3
var fighter = args[0];
var equipmentname = args[1];

var equipment = new elements.Equipment(equipmentname);
var copy = Deck.createcopyondrawpile(fighter, equipment);
copy.equipment.temporary_thisturnonly = true;
equipment.dispose();

//Draw the card now
Deck.drawlimit_bonus += 1; Deck.advance();