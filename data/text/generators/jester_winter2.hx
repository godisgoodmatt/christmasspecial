var jestershops = shuffle(["Doom and Gloom", "Pip Master", "Christmas Pistol","Blighted Zap", "Christmas Revolver", "Nine Iron", "Shrug", "Gatling Pea", "Brace", "Pocket Protector", "Electric Arc", "Rock Crusher", "Dime", "Bloody Drill", "Power Glove", "Frosty Bufu", "Dynamite Shotgun", "Sandbag", "Asklepios", "Matchbook"]);
var strangeshop = shuffle(["Bet", "Wide Spatula", "Ice Skates", "Quake Sigma", "Sickle", "Dazzler", "Cactus Cauldron"]);
var awesomelist = shuffle(["Doom and Gloom", "Christmas Pistol","Countvalanche", "Roulette", "AC Unit", "Christmas Revolver", "Flame Lance", "Poison Sting", "Power Glove", "Ukulele", "Shovel Blade", "Lucky Punch"]);
var floor2gooditem = shuffle(["Budge", "Pip Master"]);
var floor3item = shuffle(["Parry", "Double Parry", "Lightreaver", "Minigun", "Shielding Potion", "The Monarch", "Innovate"]);
var floor5item = shuffle(["Parrying Sword", "Parrying Claw", "Locket", "False Swipe", "The Monarch", "Biohazard"]);
var vampireitem = ["Silver Sword"];

var itempools = [jestershops, strangeshop, awesomelist, floor2gooditem, floor3item, floor5item, vampireitem];

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
otherstuff = [health()];
goodotherstuff = [shop(["upgrade", "delete", "delete"])];
var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand(['xmas1']);
mycoolfloor2.generate();

//Floor 3:
items = [];
gooditems = [];

otherstuff = [health()];

goodotherstuff = [
  shop(["delete", "delete", "delete"]),
  upgrade()
];
var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['xmas2']);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [];

otherstuff = [health()];
goodotherstuff = [
  shop(["upgrade", "delete", "delete"])
];

var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['xmas3']);
mycoolfloor4.generate();
  
//Floor 5:
items = [];
gooditems = [];

otherstuff = [];
goodotherstuff = [
  upgrade(),
  shop(["health", "delete", "health"], [4, 4, 4])
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