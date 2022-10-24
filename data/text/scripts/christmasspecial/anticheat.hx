//Written by Black Widow of the Wibi Fortis plural system.
//Edited by Dee <3

var alt = args[0];

var toinject = "";

if (alt == 0) {
toinject = "
	/*Begin Anti Cheat script injection*/
	if(onlimit){var sixes = 0; for (mydice in self.dicepool){ if (mydice.available() && mydice.basevalue == 6){ sixes += 1; } } for (e in self.equipment) {if(e.ready) {for (d in e.assigneddice) {if (d != null && d.basevalue == 6) {sixes += 1;} } }} self.setvar(\"badsixes\",sixes);}
	/*End Anti Cheat script injection*/
";
}
else
{
toinject = "
	/*Begin Anti Cheat? script injection*/
	if(onlimit){var sixes = 0; for (mydice in self.dicepool){ if (mydice.available() && mydice.basevalue < 6){ sixes += 1; } } for (e in self.equipment) {if(e.ready) {for (d in e.assigneddice) {if (d != null && d.basevalue < 6) {sixes += 1;} } }} self.setvar(\"baddice\",sixes);}
	/*End Anti Cheat? script injection*/
";
}

var eq = self.getskillcard();
	
if(eq.scriptonanyequipmentuse.indexOf(toinject) == -1) {
eq.scriptonanyequipmentuse = toinject + eq.scriptonanyequipmentuse;
}