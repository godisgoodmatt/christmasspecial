var self = args[0];

self.reverttoequipmentlayout();

var noteobjects = {
	rednote:{name:"[rednote]Red_Note",status:"rednote"},
	yellownote:{name:"[yellownote]Yellow_Note",status:"yellownote"},
	blacknote:{name:"[blacknote]Black_Note",status:"blacknote"},
	greennote:{name:"[greennote]Green_Note",status:"greennote"},
	bluenote:{name:"[bluenote]Blue_Note",status:"bluenote"},
	orangenote:{name:"[orangenote]Orange_Note",status:"orangenote"},
	reennote:{name:"[reennote][red]Reen_[green]Note",status:"reennote"},
	purplenote:{name:"[purplenote]Purple_Note",status:"purpnote"},
	bownote:{name:"[bownote][yellow]Ra[green]in[blue]bo[purple]w_N[orange]ot[red]e",status:"bownote"}
};

var notes = [
	noteobjects.rednote,
	noteobjects.yellownote,
	noteobjects.blacknote,noteobjects.blacknote,noteobjects.blacknote,
	noteobjects.greennote,noteobjects.greennote
];

if (self.level == 1) {
	notes.push(noteobjects.blacknote);
	notes.push(noteobjects.blacknote);
	notes.push(noteobjects.blacknote);
}

if (self.level > 1) {

	notes.push(noteobjects.rednote);
	notes.push(noteobjects.yellownote);
	notes.push(noteobjects.bluenote);
	notes.push(noteobjects.orangenote);
	notes.push(noteobjects.purplenote);
	notes.push(noteobjects.purplenote);
	notes.push(noteobjects.reennote);

	if (self.level == 2) {

		notes.push(noteobjects.blacknote);

	} else {

		notes.push(noteobjects.bluenote);
		notes.push(noteobjects.orangenote);
		notes.push(noteobjects.purplenote);
		notes.push(noteobjects.reennote);
		notes.push(noteobjects.bownote);

	}
}


shuffle(notes);

var currentspellbook = [];
var currentnotes = [];

for (i in 0...6) {
	var currentnote = notes.pop();
	currentspellbook.push(currentnote.name);
	currentnotes.push(currentnote.status);
}

Spellbook.setto(currentspellbook,[],0);
self.setvar("notes",currentnotes);

var skillcard = self.createskillcard("Sing Along", []);
skillcard.skillcard = "witch";
skillcard.skillcard_special = true;
skillcard.width = (132 + 20) * 6;
skillcard.height = 980 + 49 * 3 + 65;
skillcard.slotpositions[0].y = 5000;
self.equipment.push(skillcard);
skillcard.x = -5000;
