//Written by Black Widow of the Wibi Fortis plural system.
//Made to fit the coupon scheme by Matt :p
var toinject = "
	/*Begin coupon script injection*/
	if(self.hasstatus(\"coupon\") && !e.hastag(\"curseavoid\")) {
		if(chance(40)) {
			inflictself(\"alternate_reequipnext\");
			sfx(\"_thinghappens\");
		}
	}
	/*End Drunk script injection*/
";
for(eq in self.equipment) {
	if(eq.scriptbeforeexecute.indexOf(toinject) == -1) {
		eq.scriptbeforeexecute = toinject + eq.scriptbeforeexecute;
	}
}