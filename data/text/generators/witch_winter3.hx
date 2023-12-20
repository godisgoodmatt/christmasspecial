// Plan: Add mainly status effect-dealing items and use them to supplant the karma thing
var floor1items = shuffle(["Icicle Wind", "Equality", "Matchbook", "Acorn Shield", "Vise Grip"]);
var witchshops = shuffle(["Crowbar", "Peony", "Karmioli", "Full Circle", "Meditation", "Virtuous Mirror"]);
var strangeshop = shuffle(["Wide Spatula", "Splitula", "Duality"]);
var awesomelist = shuffle(["Mikiri", "Building Karma", "Consequences"]);
var floor2gooditem = shuffle(["Karmic Ball", "Virtuous Mirror"]);
var floor3item = shuffle([
  "Renunciation", "Fortify Spell", "Primal Cauldron", "Bicep Curl"]);
var floor5item = shuffle([ 
  "Teleport Spell", "Tails Wave"]);
var vampireitem = ["Silver Sword"];

var music = shuffle(['xmas1', 'xmas2', 'xmas3', 'xmas10', 'xmas6']);
usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [floor1items.pop(),floor1items.pop()];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand([music.pop()]);
mycoolfloor1.generate();

//Floor 2:
items = [];
gooditems = [floor2gooditem.pop()];
otherstuff = [health()];
goodotherstuff = [shop([witchshops.pop(), floor1items.pop(), witchshops.pop()])];

var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand([music.pop()]);
mycoolfloor2.generate();

//Floor 3:
items = [floor3item.pop()];
gooditems = [floor3item.pop()];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([witchshops.pop(), witchshops.pop(), witchshops.pop()])
];

var mycoolfloor3 = addfloor('normal').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand([music.pop()]);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [awesomelist.pop()];

otherstuff = [health(), health()];
goodotherstuff = [
  shop([awesomelist.pop(), floor3item.pop(), strangeshop.pop()])
];

var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand([music.pop()]);
mycoolfloor4.generate();
  
//Floor 5:
items = [];
items.push(floor5item.pop());
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  shop(["health", strangeshop.pop(), floor5item.pop()], [4, 4, 4])
];

var mycoolfloor5 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand([music.pop()]);
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