// This script is a result of Tonite
var self = args[0];
var fighter = args[1];
var amount = args[2];
var equipment = [];
if (args.length >= 4) {
	equipment = args[3];
} else {
	equipment = self.getcurrentequipment();
}

for (e in equipment) {
	if(!equipment.ready || !equipment.availablethisturn || equipment.shockedsetting > 0) continue;

	if (e.slots[0] == "COMBINATION") {
		var combostring = e.getvar("combination");
		var numboosted = 0;
		for (i in 0...combostring.length) {
			var char = combostring.charAt(i);
			if (char != "_") {
				var tempdice = new elements.Dice();

				// TODO find a better way to parse an int
				var val = 6;
				switch(char) {
					case "1": val = 1;
					case "2": val = 2;
					case "3": val = 3;
					case "4": val = 4;
					case "5": val = 5;
					case "6": val = 6;
				}

				tempdice.basevalue = val;
				self.dicepool.push(tempdice);
				e.assigndice(tempdice, -1);

				trace(e.castdirection);

				if (i == combostring.length - 1) {
					e.doequipmentaction(self, fighter, 1, e.assigneddice, 0.0, false, true, false);
				}
				
				numboosted++;
				if (numboosted >= amount) {
					break;
				}
			}
			
		}
	}
}
