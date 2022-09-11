//Written by Black Widow of the Wibi Fortis plural system.
//Made to fit the drunk scheme by Matt :p
var toinject = "
	/*Begin Drunk script injection*/
	if(self.hasstatus(\"drunk\") && !e.hastag(\"curseavoid\")) {
		if(chance(40)) {
			inflictself(\"reversenexttarget\");
			sfx(\"_curse\");
		}
	}
	/*End Drunk script injection*/
";
for(eq in self.equipment) {
	if(eq.scriptbeforeexecute.indexOf(toinject) == -1) {
		eq.scriptbeforeexecute = toinject + eq.scriptbeforeexecute;
	}
}