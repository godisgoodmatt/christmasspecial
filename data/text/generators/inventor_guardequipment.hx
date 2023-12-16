// Inventor Episode 3: Equipment Guard
var thisgenerator = "inventor_equipmentguard";
var floor1countdowns = ["Eggnog", "Sceptre", "Chain Knife", "Steamstaff", "Revolver", "Pinball Machine", "Drumkit"];
var itemstoprotect = ["Bloody Drill", "Juggling Lantern", "Slowbump", "Decantation", "Swords Dance"];
var petshop = ["Magiduck@3", "Atroid@3", "Ghoulter@3"];
var floor1crap = ["Flicker","Pocket Sand","Create Opening","Chain Link","Ubernudge","Zoop Zoop","Loud Brostep", "Crazy Glue"];
var commonlist1 = ["Tennis Racket", "Umbrella", "Sharpie", "Bronze Medal", "Stockpick", "Waltzer", "Safety Scissors", "Natural Charm", "Glue Pact", "Plasma Rifle"];
var shoplist1 = ["Tennis Racket", "Technology", "Rising Dagger", "Compact Resonator", "Burst Beam", "Repast Rapier", "Hand Sanitiser", "Spin Attack", pick(["Eternal Cauldron","Plug Socket"]), "Metal Crusher", "Iron Helmet", "Two Handed Spatula", "Contact Juggling"];
if (chance(30)) shoplist1.push("Gavel");
if (chance(30)) shoplist1.push("Sledgehammer");
var midtierdrops = ["Cozy Fire", "Ice Claw", "Scorpion", "Boston Basher", "Matchbook", "Technology", "God's Pick", "Mikiri", "Tootsie Pop"];
var floor3items = ["Cataclysm", "Occam's Razor", "Dice Pump", "Adamant Rail", pick(["Hall of Daggers", "Devilsknife"]), "Stop Sign", "Popcorn", "Gatling Pea", pick(["Reverse Emulation","Supersonic"]), "Ice Skates", "Zeus Dagger"];
var commonlist2 = ["Return Bicep Curls", "Sneksword", "Waltzer", "The Monarch", "Janky Spanner", "Freezing Wind", "Present Shotgun", "Incapacitate", "Ubersaw", "Storm Reactor", "Stygian Blade", "Sand Hawk"];
var floor5items = ["Lucky Punch", "Russian Roulette", "Nail Rat", "Betelgeuse"];
var threeturnsitems = shuffle(["Tyrant's Glare", "Brimstone"]);
floor5items.push(threeturnsitems.pop());
if(chance(25)) floor5items.push(threeturnsitems.pop());

var vampireitem = ["BOOO!"];

var itempools = [floor1countdowns, itemstoprotect, floor1crap, commonlist1, shoplist1, midtierdrops, floor3items, commonlist2, floor5items, threeturnsitems, ["Gravity", "Gavel", "Eternal Cauldron", "Plug Socket", "Wispy Kaboom Smash", "Switchblade", "Hall of Daggers", "Devilsknife", "Reverse Emulation", "Supersonic"]];
var music = shuffle(['xmas1', 'xmas2', 'xmas3', 'xmas10', 'xmas6']);
runscript("christmasspecial/checkgeneratorisaccurate",[itempools]);

trace(floor1countdowns);
/*
var myitempools = [floor1countdowns,itemstoprotect,floor1crap,commonlist1,shoplist1,midtierdrops,floor3items,commonlist2,floor5items,vampireitem];
for(i in 0...myitempools.length) {
  var itempool = myitempools[i];
  itempool = itempool.concat(itempool);
  shuffle(itempool);
}
*/
function dupeshuffle(itempool) {
  shuffle(itempool);
  var itempool1 = shuffle(itempool.copy());
  return itempool.concat(itempool1);
}
floor1countdowns = shuffle(floor1countdowns);
itemstoprotect = shuffle(itemstoprotect);
petshop = shuffle(petshop);
floor1crap = shuffle(floor1crap);
commonlist1 = shuffle(commonlist1);
shoplist1 = shuffle(shoplist1);
midtierdrops = shuffle(midtierdrops);
floor3items = shuffle(floor3items);
commonlist2 = shuffle(commonlist2);
floor5items = shuffle(floor5items);

trace(floor1countdowns);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [pick(floor1countdowns),itemstoprotect.pop()];
gooditems = [pick(floor1crap)];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor1 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor1.theme = rand([music.pop()]);
mycoolfloor1.generate();
  
//Floor 2:
items = [itemstoprotect.pop()];
gooditems = [commonlist1.pop()];

otherstuff = [
  health(), 
  health()
];
goodotherstuff = [
  shop(shuffle([shoplist1.pop(), shoplist1.pop(), itemstoprotect.pop()]), shuffle([2, 1, 1])),
  shop(shuffle(["upgrade", shoplist1.pop(), itemstoprotect.pop()]), shuffle([2, 1, 2]))
];
var mycoolfloor2 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand([music.pop()]);
mycoolfloor2.generate();

//Floor 3:
items = [commonlist2.pop()];
gooditems = [commonlist2.pop()];

otherstuff = [health()];
goodotherstuff = [
  shop(shuffle([petshop.pop(),petshop.pop(),petshop.pop()]), shuffle([1, 2, 1]))
  shop(shuffle([midtierdrops.pop(),"health",midtierdrops.pop()]), shuffle([1, 2, 1])),
  upgrade(),
  upgrade()
];
var mycoolfloor3 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand([music.pop()]);
mycoolfloor3.generate();
  
//Floor 4:
items = [floor1crap.pop()];
gooditems = [midtierdrops.pop()];
    
otherstuff = [health(), health()];
goodotherstuff = [
  shop(shuffle([shoplist1.pop(),shoplist1.pop(),floor3items.pop()]), shuffle([3, 2, 1])),
  shop(shuffle([floor1crap.pop(),commonlist1.pop(),commonlist2.pop()]), shuffle([3, 1, 4]))
];
var mycoolfloor4 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand([music.pop()]);
mycoolfloor4.generate();
  
//Floor 5:
items = [midtierdrops.pop()];
gooditems = [floor5items.pop()];
    
otherstuff = [health(), health()];
goodotherstuff = [
  shop(shuffle([floor5items.pop(), "health",midtierdrops.pop()])),
  shop(shuffle([midtierdrops.pop(),midtierdrops.pop(),commonlist1.pop()]), shuffle([1, 2, 1]))
];
    
var mycoolfloor5 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
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