// hi this is Edx7's work
var e = args[0];

if (!e.onceperbattle)
{
	self.getskillcard().animate("flash");
	self.getskillcard().animation[self.getskillcard().animation.length - 1].addcommand("textparticle","New Gadget: " + e.gadget + "!",0xffffff);
	e.animate("error"); 
	sfx("roboterror"); 
	e.ready = false; 
	e.active = false; 
	e.onceperbattle = true; 
	e.usedthisbattle = true; 
	e.totalusesremaining = -1; 

	// Handle adding gadgets
	Rules.jackpotskills.insert(0, e.gadget);
	var lastGadget = Rules.jackpotskills.pop();
	trace("added " + e.gadget);
	trace("removed " + lastGadget);
}
