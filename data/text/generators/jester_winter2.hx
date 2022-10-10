var boosters = [
"Call for Backup Inventor",
"Call for Backup Witch",
"Spare 1, Spare 2, Spare 3, Spare 4, Spare 5, Spare 6"
"Call for Backup Robot?"
"Call for Backup Thief"
"Cauldron"
];

//Adding ridiculous amounts of items to booster packs:


for (x in 0...79) {
boosters[0] = boosters[0] + ",Call for Backup Inventor";
boosters[1] = boosters[1] + ",Call for Backup Witch";
boosters[3] = boosters[3] + ",Call for Backup Robot?";
boosters[4] = boosters[4] + ",Call for Backup Thief";
boosters[5] = boosters[5] + ",Cauldron";
}


for (x in 0...12) {
boosters[2] = boosters[2] + ",Spare 1, Spare 2, Spare 3, Spare 4, Spare 5, Spare 6";
}
trace(boosters);


var itempools = [boosters];

usestandardenemies();


var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];
var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand(['xmas1']);
mycoolfloor1.generate();

//Floor 2:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [health()];
var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand(['xmas1']);
mycoolfloor2.generate();

//Floor 3:
items = [];
gooditems = [];

otherstuff = [health()];

goodotherstuff = [
];
var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['xmas2']);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [boosters.pop()];

otherstuff = [health()];
goodotherstuff = [];

var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['xmas3']);
mycoolfloor4.generate();
  
//Floor 5:
items = [];
gooditems = [boosters.pop()];

otherstuff = [];
goodotherstuff = [
  health(),health()
];

var mycoolfloor5 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand(['xmas6']);
mycoolfloor5.generate();

//Floor 6:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor6 = addfloor('boss').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor6.theme = rand(['bossy']);
mycoolfloor6.setlocation("BOSS");
mycoolfloor6.generate();