//Set up Warrior Reunion's workout card system
var Rules = args[0];

Rules.hpchangeonlevelup = 2; 
Rules.reunionwarriormode(
 1, //Number of rerolls
 [] //Starting workouts. Gonna try having none to start!
);

//Define the level up rewards
Rules.reunionwarrior_workoutrewards = [];

/*function add(r, rewards){
  r.reunionwarrior_workoutrewards.push(rewards);
}


add(Rules, ["Endurance Training@1"]); //Lvl 1 - 1 of 2
//Level up goes here (dice)
add(Rules, ["Core Training@1"]);      //Lvl 2 - 1 of 2
//Level up goes here (limit break)
add(Rules, ["Endurance Training@2", "100 Pushups"]);    //Lvl 3 - 1 of 3
add(Rules, ["Core Training@2", "100 Situps"]);  //Lvl 3 - 2 of 3
//Level up goes here (dice)
add(Rules, ["Rest Day@1"]);  //Lvl 4 - 1 of 4
add(Rules, ["Endurance Training@3"]); //Lvl 4 - 2 of 4
add(Rules, ["Core Training@3", "100 Squats"]); //Lvl 4 - 3 of 4
//Level up goes here (skill)
add(Rules, ["Breathing Exercises@2"]);
add(Rules, ["Core Training@4", "Endurance Training@6"]);
add(Rules, ["Strength Training@3"]);
//Final level up here! (dice)*/