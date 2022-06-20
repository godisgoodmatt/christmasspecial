//Written by Titku of the Wibi system.
var f = args[0];

//trace("!!!! jester_dochaining.hx called !!!!");
//trace("...determining if chainable exists...");
var chainableexists = false;
for(eq in self.equipment) {
	//trace(eq.name + " " + eq.hastag("chained") + " " + eq.hastag("alreadyunchained") + " " + eq.onscreen() + " " + eq.equipalpha);
	if(eq.hastag("chained") && eq.skillcard == "" && !eq.hastag("alreadyunchained") && eq.onscreen() && eq.equipalpha > 0) {
		chainableexists = true;
	}
}
//trace("chainable exists: " + chainableexists);
if(!chainableexists) {
	//trace("all equipment used - removing all \"already unchained\" marks");
	for(eq in self.equipment) {
		if(eq.hastag("chained") && eq.hastag("alreadyunchained") && eq.isready(true)) {
			eq.removetag("alreadyunchained");
			runscript("christmasspecial/chainunavailable",[f,eq,false]);
		}
	}
}

//trace("...looking for chainables...");
var chainable = [];
for(eq in self.equipment) {
	if(eq.skillcard == "" && !eq.hastag("immunetochain") && !eq.hastag("alreadyunchained") && eq.ready) {
		chainable.push(eq);
	}
}

//trace("chainable filled... presumably? length: " + chainable.length);
if(chainable.length > 0) {
	//trace(chainable);
	var newunchainedeq = rand(chainable);
	var oldunchainedeq = null;
	for(eq in self.equipment) {
		if(!eq.hastag("chained") && eq.skillcard == "" && !eq.hastag("immunetochain")) {
			oldunchainedeq = eq;
			oldunchainedeq.availablethisturn = false;
			oldunchainedeq.animate("flashandshake");
			runscript("christmasspecial/chainunavailable",[f,oldunchainedeq,false]);
			break;
		}
	}
	newunchainedeq.availablethisturn = true;
	newunchainedeq.removetag("chained");
	newunchainedeq.addtag("alreadyunchained");
	newunchainedeq.animate("flashandshake");
}