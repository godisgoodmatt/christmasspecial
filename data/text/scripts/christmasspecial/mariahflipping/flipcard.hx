var e = args[0];

for(c in Deck.getcards("all")) {
	if (c.equipment == e) {
		for (i in 0...e.tags.length) {
			var res = e.tags[i].indexOf("otherside:");
			if (res != -1) {
				var othersideName = e.tags[i].substr("otherside:".length);
				var newEquipment = new elements.Equipment(othersideName, e.upgraded);
				newEquipment.x = e.x;
				newEquipment.y = e.y;
				newEquipment.ready = e.ready;
				newEquipment.show = e.show;
				e.dispose();
				c.equipment = newEquipment;
			}
		}
	}
}