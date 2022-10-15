// hi this is Edx7's work
var target = args[0];

// Need to have "Inventor Gadgets" during map phase so we can toggle gadget previews
// But during battle, you need to have the Robot's calculate skill.
// On battle start, replace gadgets with Robot Calculate
self.equipment.remove(self.getskillcard());
var robotcalculate = self.createskillcard("Robot Calculate", []);

// Creating Robot Calculate resets target so we set it here
self.roll_target = target;
self.equipment.push(robotcalculate);
