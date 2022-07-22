//Warrior Super Set card; equip a new workout card now!
var Rules = args[0];
var self = args[1];

var workoutcardstring = "";

if(self.varexists("reunionwarrior_workouts")){
  workoutcardstring = self.getvar("reunionwarrior_workouts");
}

if(workoutcardstring != ""){
  var workoutcards = workoutcardstring.split(",");

  if(workoutcards.length > 0){
    sfx("_thinghappens");
    var currentcard = Rules.reunionwarriorcommand("getcurrentcard");
    var cardused = Rules.reunionwarriorcommand("isused");
    if(cardused || currentcard == ""){
      //If the workout card is already used, don't re-add it to the deck
    }else{
      //Since the workout card is not used, add it back to the deck, and sort
      workoutcards.push(currentcard);
      workoutcardstring = workoutcards.join(",");
      self.setvar("reunionwarrior_workouts", workoutcardstring);
      Rules.reunionwarriorcommand("sort");
    }
    Rules.startdraftmode(workoutcards, "Select a new workout card", true);
  }else{
    //No effect!
    self.textparticle("No cards left!");
    sfx("_silence");
  }
}