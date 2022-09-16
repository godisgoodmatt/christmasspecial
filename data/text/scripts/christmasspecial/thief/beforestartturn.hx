//On your first turn as Warrior in Reunion, select the workout card to use
var fighter = args[0];
var Rules = args[1];

var currentcard = Rules.reunionwarriorcommand("getcurrentcard");
var cardused = Rules.reunionwarriorcommand("isused");

var workoutcardstring = "";

if(fighter.varexists("reunionwarrior_workouts")){
  workoutcardstring = fighter.getvar("reunionwarrior_workouts");
}

if(workoutcardstring != ""){
  var workoutcards = workoutcardstring.split(",");
  if(workoutcards.length > 0){
    if(currentcard == ""){
      //At some point, I might expand this to support a more generalised Draft mode feature
      //syntax is: Rules.startdraftmode(cardlist);
      // cardlist: string array of cards
      // returnscript: name of script to call once you've selected a card. args[0] contains the card name. (to do?)
      Rules.startdraftmode(workoutcards, "Select a new workout card", false);
    }
  }
}