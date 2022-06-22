var warriorshops = shuffle(["Doom and Gloom", "Pip Master", "Christmas Pistol","Blighted Zap", "Christmas Revolver", "Nine Iron", "Shrug", "Gatling Pea", "Brace", "Pocket Protector", "Electric Arc", "Rock Crusher", "Dime", "Bloody Drill", "Power Glove", "Frosty Bufu", "Dynamite Shotgun", "Sandbag", "Asklepios", "Matchbook"]);
var strangeshop = shuffle(["Bet", "Wide Spatula", "Ice Skates", "Quake Sigma", "Sickle", "Dazzler", "Cactus Cauldron"]);
var awesomelist = shuffle(["Doom and Gloom", "Christmas Pistol","Countvalanche", "Roulette", "AC Unit", "Present Shotgun", "Christmas Revolver","Flame Lance", "Poison Sting", "Power Glove", "Braver", "Ukulele", "Shovel Blade", "Lucky Punch"]);
var floor2gooditem = shuffle(["Budge", "Pip Master"]);
var floor3item = shuffle(["Parry", "Double Parry", "Lightreaver", "Minigun", "Shielding Potion", "The Monarch", "Innovate"]);
var floor5item = shuffle(["Parrying Sword", "Parrying Claw", "Locket", "False Swipe", "The Monarch", "Biohazard"]);
var vampireitem = ["Silver Sword"];



usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [awesomelist.pop()];
otherstuff = [];
goodotherstuff = [];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 2:
items = [];
gooditems = [pick(["Budge", "Pip Master"])];
otherstuff = [health()];
goodotherstuff = [shop([warriorshops.pop(), warriorshops.pop(), warriorshops.pop()])];

addfloor("small")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [];
items.push(floor3item.pop());
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([warriorshops.pop(), warriorshops.pop(), warriorshops.pop()]),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
items = [];
gooditems = [awesomelist.pop()];

otherstuff = [health()];
goodotherstuff = [
  trade(["any"], [awesomelist.pop()])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5:
items = [];
items.push(floor5item.pop());
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["health", strangeshop.pop(), "health"], [4, 4, 4])
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

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