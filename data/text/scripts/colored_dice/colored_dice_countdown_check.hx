//written by bert (& GEDDY) of wibi based on code by david "themysticsword" galiev

var self = args[0];
var e = args[1];
var colortotype = args[2];
var justbecameconsumed = self.getvar("justbecameconsumed");

var ACT_CD_CHECK_DELAY = new motion.actuators.SimpleActuator(null, 1/60, null);
var FUNC_CD_CHECK_DELAY = new hscript.Parser().parseString('
if(e.dicehistory.length > 0 && justbecameconsumed.length > 0) {
	var consumeddice = justbecameconsumed[justbecameconsumed.length-1];
	self.setvar(justbecameconsumed,[]);
	justbecameconsumed = [];
	if(consumeddice.assigned == e) {
		var checktypes = [];
		var defaultcheck = "none";
		for (tag in e.tags) if (tag.indexOf("colored_dice_requirement:") != -1) checktypes = tag.split(":")[1].split("");
		
		if(colortotype) switch(e.equipmentcol) {
			case 8:
				defaultcheck = "b";
			case 2:
				defaultcheck = "r";
		}
		
		var accepted = true;
		
		var lastdiceindex = e.dicehistory.length - 1; //this breaks if you insert two dice into the countdown simultaneously (e.g. octobar) but that situation never occurs in host. i might revamp this code for some "needs odd" countdown item or something in which case ill fix that
		var checkeddice = consumeddice;
		
		var oldvalue = checkeddice.basevalue;
		
		var typetocheck = null;
		var dicecolorold = null;
		if(lastdiceindex + 1 >= checktypes.length) typetocheck = defaultcheck;
		else typetocheck = checktypes[lastdiceindex];
		if (typetocheck != "none" && self.getvar("colored_dice_" + typetocheck).indexOf(checkeddice) == -1) {
			accepted = false;
			if(typetocheck == "r") dicecolorold = "b";
			if(typetocheck == "b") dicecolorold = "r";
		}
		
		if (!accepted) {
			e.preventdefault = true;
			
			var actReactivate = new motion.actuators.SimpleActuator(null, 0.01, null);
			var funcReactivate = new hscript.Parser().parseString("
			e.show = true;
			e.ready = true;
			e.active = true;
			e.preventdefault = false;
			");
			var interp = new hscript.Interp();
			interp.variables.set("self", self);
			interp.variables.set("e", e);
			interp.variables.set("trace", trace);
			actReactivate.onComplete(interp.execute, [funcReactivate]);
			actReactivate.move();
			
			function color_dice(d, c) {
				d.showoverlayimage = true;
				d.overlayimage = "colored_dice_" + c;
				d.graphic.overlayimage = new displayobjects.HaxegonSprite(-0.0008, -0.001, "colored_dice/colored_dice_" + c, 0, 0);
				d.overlayimage_xoff = 0;
				d.overlayimage_yoff = 0;
				d.overlayimage_alpha = 1;
				d.overlayimage_animate = 0.1;
				d.overlayimage_animatetime = 0.1;
				d.overlayimage_frame = 0;
				d.overlayimage_repeat = true;
			}
			
			var replacementdice = new elements.Dice(e.x + e.slotpositions[0].x, e.y + e.slotpositions[0].y);
			replacementdice.basevalue = checkeddice.basevalue;
			replacementdice.owner = self;
			self.dicepool.push(replacementdice);
			var colored_dice_r = self.getvar("colored_dice_r");
			var colored_dice_b = self.getvar("colored_dice_b");
			if(colored_dice_r.indexOf(checkeddice) != -1) {
				colored_dice_r.push(replacementdice);
				color_dice(replacementdice, "r");
				self.setvar("colored_dice_r", colored_dice_r);
			}
			else if(colored_dice_b.indexOf(checkeddice) != -1) {
				colored_dice_b.push(replacementdice);
				color_dice(replacementdice, "b");
				self.setvar("colored_dice_b", colored_dice_b);
			}
			
			checkeddice.showoverlayimage = false;
			
			replacementdice.kick(rand([0, 30, 60, 90]) * rand([1, 2, 3, 4]) + rand([-15, -5, 0, 5, 10, 15]), rand([5, 7, 9, 10, 12, 14]));
			//altburn and priority (from altlock) will not be returned, and the equipment will stay altburnt if an altburnt dice was used, but that is irrelevant to hostmod
			
			e.dicehistory.pop();
			//e.remainingcountdown += checkeddice.basevalue + checkeddice.modifier;
			e.remainingcountdown++;
			e.reducecountdownby = 0;
			e.reducecountdowndelay = 0;
		
			e.animate("");
			var anim = e.animation[e.animation.length - 1];
			anim.addcommand("shake", 0.1, 4, 4);
			anim.adddelay(0.1);
			var str = "[dice] Needs ";
			if(lastdiceindex + 1 < checktypes.length) {
				if(checktypes[lastdiceindex] == "b") str += "blue";
				if(checktypes[lastdiceindex] == "r") str += "red";
			} else {
				if(defaultcheck == "b") str += "blue";
				if(defaultcheck == "r") str += "red";
			}
			str += "!";
			anim.addcommand("textparticle", str, 0xFFFFFF);
		}
	}
}
');
var interp = new hscript.Interp();
interp.variables.set("self", args[0]);
interp.variables.set("e", args[1]);
interp.variables.set("colortotype", args[2]);
interp.variables.set("justbecameconsumed", args[0].getvar("justbecameconsumed"));
interp.variables.set("trace", trace);
interp.variables.set("rand", rand);
ACT_CD_CHECK_DELAY.onComplete(interp.execute, [FUNC_CD_CHECK_DELAY]);
ACT_CD_CHECK_DELAY.move();