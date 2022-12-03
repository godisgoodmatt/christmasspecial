// hi this is Edx7's work

// Need to use Inventor Gadgets as skill card for overworld so we can toggle gadget preview
var floornum = getcurrentfloor() - 1; // for some reason "Floor 1" returns 2 in this episode
if (floornum != 6) {
    self.equipment.remove(self.getskillcard());
    var inventorgadgets = self.createskillcard("Inventor Gadgets", []);
    self.equipment.push(inventorgadgets);
}
