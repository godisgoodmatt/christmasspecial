var thisgenerator = "witch_normal";
var commonlist_basic = [];
var commonlist_offensive = [];
var commonlist_dicemanipulation = [];
var floor2items = [];
var floor2shop = [];
var goodshopcontents = [];
var floor5shop = [];
var vampireitem = [];
var itempools = [commonlist_basic, commonlist_offensive, commonlist_dicemanipulation, floor2items, floor2shop, goodshopcontents,floor5shop,vampireitem]; //Initialize lists like this for clarity

/*NOTICE TO MODDERS:
  All you need to do to get your items in here is append the name of your mod to:
    diceydungeons/itempools/[this generator's name minus file extension]/scriptstorun.txt
  Then add a .hx script of the appropriate name to that directory that returns an array containing arrays of items
  you want to add to each of the generator's item pools. Use the vanilla script for this generator for reference -
  it's important you return the right amount of arrays!
  
  (If you want to replace the generator entirely, in case you have an extremely specific item pool in mind, you should
  get rid of declaring itempools and add items directly to the above lists (or replace pops from them with strings).
  Note however that other mods will no longer be able to add items here.)*/
  
itempools = runscript("diceydungeons/flexible_generator",[thisgenerator,itempools]);
var commonlist_basic = itempools[0];
var commonlist_offensive = itempools[1];
var commonlist_dicemanipulation = itempools[2];
var floor2items = itempools[3];
var floor2shop = itempools[4];
var goodshopcontents = itempools[5];
var floor5shop = itempools[6];
var vampireitem = itempools[7];

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [rand(getequipmentlist(null,["spell"],[]))];
gooditems = [rand(getequipmentlist(null,["spell"],[]))];
otherstuff = [];
goodotherstuff = [];

addfloor("tiny")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 2:
commonlist_dicemanipulation = shuffle(commonlist_dicemanipulation);
commonlist_offensive = shuffle(commonlist_offensive);
		
items = [];
		
gooditems = [rand(getequipmentlist(null,["spell"],[]))];
otherstuff = [
  health(), 
  health()
];

goodotherstuff = [
  shop(shuffle([commonlist_offensive.pop(), floor2shop.pop(),  commonlist_basic.pop()]))
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  	
//Floor 3:
items = [rand(getequipmentlist(null,["spell"],[]))];
gooditems = [rand(getequipmentlist(null,["spell"],[]))];
		
otherstuff = [
  health(), 
  health()
];

goodotherstuff = [
  shop(shuffle([commonlist_offensive.pop(), "Health", commonlist_dicemanipulation.pop()]), [2, 3, 4])
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 4:
items = [];
gooditems = [rand([commonlist_dicemanipulation.pop(), commonlist_offensive.pop()])];
		
shuffle(commonlist_dicemanipulation);
shuffle(commonlist_offensive);
		
otherstuff = [
  health(),
  health(),
  health()
];

goodotherstuff = [
  shop(shuffle([goodshopcontents.pop(), goodshopcontents.pop(), "Health"]), [3, 4, 5])
];
		
addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5:
items = [rand(getequipmentlist(null,["spell"],[]))];
gooditems = [];
otherstuff = [health(), health(), health()];
goodotherstuff = [
  shop(shuffle(
    [
      rand(floor5shop), 
      commonlist_offensive.pop(), 
      "Health"
    ]))
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

var lastfloor = addfloor("boss");

if (getfinalboss() == "Drake"){
  items.push(vampireitem.pop());
}

lastfloor
  .additems(items, gooditems)
  .setlocation('BOSS')
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();