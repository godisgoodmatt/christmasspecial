//written by not mario
var allsmalleqs = args[0];
var pleasereturnupgraded = args[4];

shuffle(allsmalleqs);

var eq = null;

while(eq == null) {
	if(allsmalleqs.length == 0) {
		trace("couldn't find an equipment for Something Cold with pleasereturnupgraded " + pleasereturnupgraded);
		break;
	}
	var testeq = new elements.Equipment(allsmalleqs.pop());
	if(pleasereturnupgraded) {
		if(testeq.upgradetype == "") continue;
		testeq = new elements.Equipment(testeq.name + "+");
		if(testeq.size == 2) continue;
	}
	if(
		testeq.equipmentcol == 1 ||
		testeq.equipmentcol == 6 ||
		testeq.equipmentcol == 8 ||
		testeq.equipmentcol == 3 ||
		testeq.equipmentcol == 5
	) {
		eq = testeq;
	}
}

return eq;