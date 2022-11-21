//Restore the Warrior's Limit break on load, if it's been changed
var self = args[0];
var Rules = args[1];

for (i in 0...self.getvar("numberOfBattlesWon")) {
	Rules.reunionwarrior_workoutrewards.push(["Sword"]);
}
