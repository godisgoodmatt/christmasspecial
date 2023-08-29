var self = args[0];
var e = args[1];
var colortotype = args[2]; //bert
var checktypes = [];
for (tag in e.tags) if (tag.indexOf("colored_dice_requirement:") != -1) checktypes = tag.split(":")[1].split("");

//below if statement and its contents written by bert of wibi. in host, matt wanted it so that blue items only take blue dice, and red items only take red dice. if args[2] is true, then it makes red/blue equipment require red/blue dice where not otherwise specified.
if(colortotype) switch(e.equipmentcol) {
	case 8: //brightcyan (blue)
		if (e.slots.length - checktypes.length > 0) {
			for(i in 0...e.slots.length) {
				checktypes.push("b");
			}
		}
	case 2: //red
		if (e.slots.length - checktypes.length > 0) {
			for(i in 0...e.slots.length) {
				checktypes.push("r");
			}
		}
}

var accepted = true;
var c = 0;
for (i in 0...e.assigneddice.length) {
    if (self.getvar("colored_dice_" + checktypes[i]).indexOf(e.assigneddice[i]) == -1) {
        accepted = false;
        break;
    }
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
    
    for (i in 0...e.assigneddice.length) {
        e.assigneddice[i].assigned = null;
        e.assigneddice[i].kick(rand([0, 30, 60, 90]) * rand([1, 2, 3, 4]) + rand([-15, -5, 0, 5, 10, 15]), rand([5, 7, 9, 10, 12, 14]));
        e.assigneddice[i] = null;
    }

    e.animate("");
    var anim = e.animation[e.animation.length - 1];
    anim.addcommand("shake", 0.1, 4, 4);
    anim.adddelay(0.1);
    var str = "[dice] Needs ";
    for (i in 0...checktypes.length) {
        if (checktypes[i] == "b") str += "blue"; else str += "red";
        if (i + 1 < checktypes.length) {
            if (i + 2 == checktypes.length) str += " and ";
            else str += ", ";
        }
    }
    str += "!";
    anim.addcommand("textparticle", str, 0xFFFFFF);
}
