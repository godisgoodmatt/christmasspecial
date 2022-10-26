// This script is a result of Tonite
var self = args[0];
var e = args[1];

if (self.getvar("rollhistory").length < self.getvar("numrolls") && self.getvar("stop") == 0) {

	var rolls = rand(self.getvar("rolls"));
	givedice([rolls]);
	runscript("christmasspecial/mqspecialdice",[self,target,"onstartturn_player",turn]);

	self.getvar("rollhistory").push(rolls);

	if(chance(self.getvar("errorchance"))){
		inflictself("ncr_error");
		sfx("_curse");
		self.getvar("survivalhistory").push(false);
		self.setvar("errorsthisturnx2",self.getvar("errorsthisturnx2")+2);
		self.setvar("errorsthisturnx2+2",self.getvar("errorsthisturnx2+2")+2);
	} else {
		self.getvar("survivalhistory").push(true);
	}

	if (self.getvar("rollhistory").length == self.getvar("numrolls")) {
		sfx("roboterror");
	}
}
