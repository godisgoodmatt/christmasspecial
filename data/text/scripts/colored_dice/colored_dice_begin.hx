args[0].setvar("colored_dice_r", []);
args[0].setvar("colored_dice_b", []);
args[0].setvar("notconsumed", []); //bert
args[0].setvar("justbecameconsumed", []); //bert

var actColoredDice = new motion.actuators.SimpleActuator(null, 0, null);
actColoredDice.repeat(-1);
var funcColoredDice = new hscript.Parser().parseString("
//line directly below added by bert of wibi to prevent crash when exiting to title during the start of battle
if (self.dicepool == null) { trace(\"dicepool is null! exiting\"); actColoredDice._repeat = 0; }

if (actColoredDice._repeat == 0) return;

function color_dice(d, c) {
    d.showoverlayimage = true;
    d.overlayimage = \"colored_dice_\" + c;
    d.graphic.overlayimage = new displayobjects.HaxegonSprite(-0.0008, -0.001, \"colored_dice/colored_dice_\" + c, 0, 0);
    d.overlayimage_xoff = 0;
    d.overlayimage_yoff = 0;
    d.overlayimage_alpha = 1;
    d.overlayimage_animate = 0.1;
    d.overlayimage_animatetime = 0.1;
    d.overlayimage_frame = 0;
    d.overlayimage_repeat = true;
}

if (self.dicepool.length > 0) for (mydice in self.dicepool) {
    if (colored_dice_r.indexOf(mydice) == -1 && colored_dice_b.indexOf(mydice) == -1) {
        if (chance(50)) colored_dice_r.push(mydice); else colored_dice_b.push(mydice);
    }
    
    if (colored_dice_r.indexOf(mydice) != -1 || colored_dice_b.indexOf(mydice) != -1) {
        if (!mydice.consumed && (!mydice.frozen && (!mydice.burn || (timer % 120) <= 60))) {
            if (colored_dice_r.indexOf(mydice) != -1 && (mydice.overlayimage != \"colored_dice/colored_dice_r\" || !mydice.showoverlayimage)) color_dice(mydice, \"r\");
            if (colored_dice_b.indexOf(mydice) != -1 && (mydice.overlayimage != \"colored_dice/colored_dice_b\" || !mydice.showoverlayimage)) color_dice(mydice, \"b\");
        } else {
            if (mydice.burn && mydice.overlayimage != \"fire\") {
                mydice.showoverlayimage = true;
                mydice.overlayimage = \"fire\";
                mydice.graphic.loadoverlay(\"fire\");
                mydice.overlayimage_xoff = -(4 * 6) - 6;
                mydice.overlayimage_yoff = -(23 * 6) - 3;
                mydice.overlayimage_alpha = 0.01;
                mydice.overlayimage_animate = 0.02;
                mydice.overlayimage_animatetime = 0.02;
                mydice.overlayimage_frame = 0;
                mydice.overlayimage_repeat = true;
            }
        }
		//this part added by bert of wibi - should make it so when you end your turn, overlays that are above the screen are cleared. fixes a bug where the overlays of the dice would come back down after you use dice and then end your turn
		if(self.doendturnnow && mydice.y < -242 && mydice.assigned != null) {
			mydice.showoverlayimage = false;
		}
    }
	//this dumb shit written by bert
	if(!mydice.consumed && notconsumed.indexOf(mydice) == -1) {
		notconsumed.push(mydice);
	}
	else if(mydice.consumed && notconsumed.indexOf(mydice) != -1 && justbecameconsumed.indexOf(mydice) == -1) {
		justbecameconsumed.push(mydice);
	}
}

if (self.equipment.length > 0) for (e in self.equipment) {
    if (e.getvar(\"colored_dice_is_item_check\") == 0) {
        var isColoredDiceItem = false;
		//below check for coloration by bert
		if(self.getvar(\"colored_dice:colortotype\") && (e.equipmentcol == 8 || e.equipmentcol == 2)) {
            e.setvar(\"colored_dice_is_item_check\", 1);
            isColoredDiceItem = true;
        } else {
			for (tag in e.tags) if (tag.indexOf(\"colored_dice_requirement:\") != -1) {
				e.setvar(\"colored_dice_is_item_check\", 1);
				isColoredDiceItem = true;
				break;
			}
		}
        if (!isColoredDiceItem) e.setvar(\"colored_dice_is_item_check\", 2);
    } else if (e.getvar(\"colored_dice_is_item_check\") == 1) {
        if (!e.hastag(\"colored_dice_no_description_edit\") && e.fulldescription.indexOf(\"⸡\") == -1) {
            for (tag in e.tags) if (tag.indexOf(\"colored_dice_requirement:\") != -1) {
                var checktypes = tag.split(\":\")[1].split(\"\");
                var str = \"\";
                for (i in 0...checktypes.length) {
                    if (checktypes[i] == \"b\") str += \"BLUE\"; else str += \"RED\";
                    if (i + 1 < checktypes.length) str += \" \";
                }
                e.fulldescription = \"⸡[90%]\" + str + \"[]|\" + e.fulldescription;
                break;
            }
        }
        if(e.countdown == 0) { //this check added by bert of wibi
            if (e.scriptbeforeexecute.indexOf(\"runscript(\\\"colored_dice/colored_dice_check\\\", [self, e, self.getvar(\\\"colored_dice:colortotype\\\")]);\") == -1) { //colortotype bit added by bert of wibi
                e.scriptbeforeexecute += \"runscript(\\\"colored_dice/colored_dice_check\\\", [self, e, self.getvar(\\\"colored_dice:colortotype\\\")]);\"; //same
            }
		} else {
		//bert: todo, place the added bit at the *start* of beforeexecute, then do something that makes it abandon the rest of beforeexecute if the dice were ejected and the equipment isn't being used. (return?) this might not be relevant to host though
		    if (e.scriptonanycountdownreduce.indexOf(\"runscript(\\\"colored_dice/colored_dice_countdown_check\\\", [self, e, self.getvar(\\\"colored_dice:colortotype\\\")]);\") == -1) { //colortotype bit added by bert of wibi
                e.scriptonanycountdownreduce += \"runscript(\\\"colored_dice/colored_dice_countdown_check\\\", [self, e, self.getvar(\\\"colored_dice:colortotype\\\")]);\"; //same
            }
		}
    }
}

timer++;

");
var interp = new hscript.Interp();
interp.variables.set("self", args[0]);
interp.variables.set("colored_dice_r", args[0].getvar("colored_dice_r"));
interp.variables.set("colored_dice_b", args[0].getvar("colored_dice_b"));
interp.variables.set("notconsumed", args[0].getvar("notconsumed")); //bert
interp.variables.set("justbecameconsumed", args[0].getvar("justbecameconsumed")); //bert
interp.variables.set("chance", chance);
interp.variables.set("timer", 0);
interp.variables.set("trace", trace);
interp.variables.set("actColoredDice", actColoredDice);
actColoredDice.onRepeat(interp.execute, [funcColoredDice]);
actColoredDice.move();
args[0].setvar("colored_dice_actuator", actColoredDice);
