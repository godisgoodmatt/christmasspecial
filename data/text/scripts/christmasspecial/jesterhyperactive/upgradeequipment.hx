//Jester: Add a particular card to your deck and draw it
var d = args[0];

var isjester = (self.layout == "DECK");

var eqlist = [];
var offset = 0;

for (i in 0...d) {
	var e = Deck.getcard(i + offset);
	while (e == null && i + offset < Deck.getcardlist("all").length) {
		offset++;
		e = Deck.getcard(i + offset);
	}
	if (e != null) {
		eqlist.push(e);
		trace(e);
	}
}

if(eqlist.length > 0){

	for(e in eqlist) {
		var newequipment = new elements.Equipment(e.equipment.name + "+");
		if(newequipment.size == 1 && isjester) newequipment.resize(2);
		newequipment.x = e.equipment.x;
		newequipment.y = e.equipment.y;
		e.equipment.dispose;
    	e.equipment = newequipment;
		newequipment.animate("flash");
	} 
}
//Script.rungamescript(copy.scriptbeforestartturn, "equipment_scriptbeforestartturn", self, copy);