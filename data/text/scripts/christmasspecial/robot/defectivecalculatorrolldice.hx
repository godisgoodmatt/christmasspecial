// This script is a result of Tonite
var self = args[0];
var e = args[1];

var rolls = rand(self.getvar("rolls"));
givedice([rolls]);
runscript("christmasspecial/mqspecialdice",[self,target,"onstartturn_player",turn]);

self.getvar("rollhistory").push(rolls);

if(chance(self.getvar("errorchance"))){
	inflictself("ncr_error");
	sfx("_curse");
	self.getvar("survivalhistory").push(false);
} else {
	self.getvar("survivalhistory").push(true);
}

if (self.getvar("rollhistory").length >= self.getvar("numrolls")) {
	e.animate("error");
	sfx("roboterror");
	e.ready = false;
	e.active = false;
	e.show = false;
	for (display in e.getvar("displays")) {
		display.show = false;
	}
}
