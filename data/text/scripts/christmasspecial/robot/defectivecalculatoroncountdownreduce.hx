// Wait for the end of the frame
var act = new motion.actuators.SimpleActuator(null,0,null);
var script = new elements.DiceyScript('
    for (e in self.equipment) {
        if (e.reducecountdownby < 0) {
            e.remainingcountdown = e.remainingcountdown - e.reducecountdownby;
            e.reducecountdownby = 0;
            sfx("countdowntick_1");
        }
    }
');
script.set("self", args[0]);
script.set("sfx", sfx);
act.onComplete(script.execute, []);
act.move();