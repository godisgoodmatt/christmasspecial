var awesomelist = shuffle(["Chocolate Bar", "Eggnog", "Return Bicep Curls", "Primal Punch", "Prediction Interval", "Double Trouble", "Black Hole", "Target", "Integer Overflow", "Can I Haxe You A Question", "Raw Damage Output", "Terminal Illness"]);
var needs = shuffle(["Bug Fixes", "Lantern", "Normal Integer", "Null Object Reference", "Perfected Dice", "Dark Matter", "Bolts And Screws", "Backwards Logic"]);
var dice = shuffle(["Spanner@robot", "Multiply", "Bump@robot", "Nudge@robot", "Probablity Question"]);
var vampireitem = ["Silver Sword"];

var itempools = [awesomelist, needs, vampireitem, dice];

runscript("christmasspecial/checkgeneratorisaccurate",[itempools]);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [needs.pop()];
otherstuff = [];
goodotherstuff = [];
var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand(['xmas1']);
mycoolfloor1.generate();

//Floor 2:
items = [dice.pop()];
gooditems = [awesomelist.pop()];
otherstuff = [health()];
goodotherstuff = [shop([needs.pop(), awesomelist.pop(), awesomelist.pop()])];
var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand(['xmas1']);
mycoolfloor2.generate();

//Floor 3:
items = [needs.pop()];
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([awesomelist.pop(), awesomelist.pop(), needs.pop()]),
  upgrade()
];
var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['xmas2']);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [dice.pop()];

otherstuff = [health()];
goodotherstuff = [
  trade(["any"], [awesomelist.pop()])
];
var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['xmas3']);
mycoolfloor4.generate();
  
//Floor 5:
items = [awesomelist.pop()];
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["upgrade", awesomelist.pop(), "health"], [4, 4, 4])
];

var mycoolfloor5 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand(['xmas6']);
mycoolfloor5.generate();

//Floor 6:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

if (getfinalboss() == "Mariah Carey"){
  items.push("BOOO!");
}

var mycoolfloor6 = addfloor('boss').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor6.theme = rand(['bossy']);
mycoolfloor6.setlocation("BOSS");
mycoolfloor6.generate();