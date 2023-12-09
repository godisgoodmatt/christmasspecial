var thisgenerator = "jester_hyperactive";

var vampireitem = ["Silver Sword"];

usestandardenemies();

var generalItems = shuffle([
  "Sparkles",
  "Hyperrush Gigadrive",
  "Catastrophe",
  "Tetraphobia",
  "Crossbow",
  "Juggling Ball@jester3",
  "Backflip",
  "Call for Backup Witch",
  "Mechanical Leg"
]);

var deckedItems = shuffle([
  "Status Item To Replace",
  "Status Item To Replace",
  "Status Item To Replace",
  "Attack Item To Replace",
  "Attack Item To Replace",
  "Attack Item To Replace",
  "Strong Item To Replace",
  "Unique Item To Replace"
]);

var finales = shuffle([
  "Encore",
  "High Flying Kick",
  "Grand Finale@jester3",
  "Dice Blaster"
]);

//Floor 1:
addfloor("tiny")
  .additems([generalItems.pop()], [])
  .generate();
  
//Floor 2:
var items = [pick(finales), "Ned's Anvil"];
var gooditems = [generalItems.pop()];
var otherstuff = [
  health(), 
  health()
];
var goodotherstuff = [
  shop(["Super Delete", "Attack Item To Replace", "Super Delete"], [2, 3, 2]), //substituted elsewhere
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [pick(deckedItems)];
gooditems = [];
otherstuff = [
  health(), 
  health()
];
goodotherstuff = [
  shop([pick(deckedItems), generalItems.pop(), "Super Delete"])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 4
items = ["Boosterpack,Boosterpack,Boosterpack"];
gooditems = ["Unique Item To Replace", "Ned's Anvil"]; //substituted elsewhere

otherstuff = [
  health(), 
  upgrade()
];
goodotherstuff = [
  shop([pick(deckedItems), pick(deckedItems), generalItems.pop()]),
  copyshop()
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5
items = [];
gooditems = [];
otherstuff = [health(), health(), health()];
goodotherstuff = [
  shop(["Ned's Anvil", pick(deckedItems), "Super Delete"])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

// Floor 6:			
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

usestandardenemies(false);
var finalboss:String = level6enemies.pop();
if (finalboss == "Drake"){
  items.push(vampireitem.pop());
}

addfloor("boss")
  .addenemies([], [finalboss])
  .setlocation('BOSS')
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();