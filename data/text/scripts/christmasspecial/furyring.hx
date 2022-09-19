//Written by Black Widow of the Wibi Fortis plural system.
//Edited by Dee <3
var toinject = "
	/*Begin Fury Ring script injection*/
	if(self.hasstatus(\"fury\")) {
		self.setvar(\"furyringfuried\",1);
	}
	else
	{
		self.setvar(\"furyringfuried\",0);
	}
	/*End Fury Ring script injection*/
";
for(eq in self.equipment) {
	if(eq.scriptbeforeexecute.indexOf(toinject) == -1) {
		eq.scriptbeforeexecute = toinject + eq.scriptbeforeexecute;
	}
}