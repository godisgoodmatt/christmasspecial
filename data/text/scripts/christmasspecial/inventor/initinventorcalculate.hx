var target = args[0];

// On battle start replace gadgets with Robot Calculate
self.equipment.remove(self.getskillcard());
var robotcalculate = self.createskillcard("Robot Calculate", []);

// Creating Robot Calculate resets target so we set it here
self.roll_target = target;
self.equipment.push(robotcalculate);
