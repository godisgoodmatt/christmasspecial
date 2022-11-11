var notes = shuffle(["Dark Song","Healthy Song","Holding The Note","Emotions","Opera","Another Song"]);
var latenotes = ["Duet","Mic Check","Pitch Poison","Killer Karaoke"];
var finale = ["Curtain Call"];
var vampireitem = ["Silver Sword"];

var itempools = [notes, latenotes, vampireitem];

runscript("christmasspecial/checkgeneratorisaccurate",[itempools]);

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

usestandardenemies();

//Floor 1:
items = [notes.pop()];
gooditems = [];
otherstuff = [];
goodotherstuff = [];
var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand(['music_mariahlow']);
mycoolfloor1.setlocation("GAMESHOW");
mycoolfloor1.generate();

//Floor 2:
items = [notes.pop()];
gooditems = [finale.pop()];
otherstuff = [health()];
goodotherstuff = [];
var mycoolfloor2 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = mycoolfloor1.theme;
mycoolfloor2.setlocation("GAMESHOW");
mycoolfloor2.generate();

//Floor 3:
items = [notes.pop()];
gooditems = [latenotes.pop()];
otherstuff = [health(), health()];

goodotherstuff = [
  shop(["health", "upgrade", "health"], [4, 4, 4])
];
var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['music_mariahlow']);
mycoolfloor3.setlocation("GAMESHOW");
mycoolfloor3.generate();

//Floor 4:
items = [latenotes.pop()];
gooditems = [];

otherstuff = [health()];
goodotherstuff = [];
var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['music_mariahlow']);
mycoolfloor4.setlocation("GAMESHOW");
mycoolfloor4.generate();
  
//Floor 5:
items = [latenotes.pop()];
gooditems = [];

otherstuff = [health()];
goodotherstuff = [
  shop(["health", "health", "upgrade"], [4, 4, 4])
];

var mycoolfloor5 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand(['music_mariahlow']);
mycoolfloor5.setlocation("GAMESHOW");
mycoolfloor5.generate();

// Floor 6:            
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor6 = addfloor('boss').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor6.theme = rand(['music_mariahboss']);
mycoolfloor6.setlocation("boss");
mycoolfloor6.generate();