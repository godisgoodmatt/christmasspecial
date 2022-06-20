var thisgenerator = "inventor_normal";
var floor1countdowns = ["Sceptre", "Chain Knife", "Steamstaff", "Revolver", "Pinball Machine", "Drumkit"];
var scrapitems = ["Scrap Ooze", "Scrap Heater", "Scrap Sleet", "Scrap Crystal", "Scraptula", "Scrap Lamp", "Scrapstick", "Scrapsies", "Scrap Slingshot", "Scrap Trap"];
var floor1crap = ["Flicker","Pocket Sand","Washcloth","Create Opening","Cherry Bomb","Chain Link","Ubernudge","Zoop Zoop","Loud Brostep","Burner Phone", "Crazy Glue"];
var commonlist1 = ["Murk", "Tennis Racket", "Umbrella", "Sharpie", "Bronze Medal", "Stockpick", "Waltzer", "Safety Scissors", "Cloak and Dagger", "Natural Charm", "Glue Pact", "Flamebringer", "Plasma Rifle"];
var shoplist1 = ["Study", "Tennis Racket", "Stopwatch", "Technology", "Rising Dagger", "Compact Resonator", "Burst Beam", "Repast Rapier", "Jester's Glove", "Hand Sanitiser", "Spin Attack", pick(["Eternal Cauldron","Plug Socket"]), "Metal Crusher", "Iron Helmet", "Two Handed Spatula", "Contact Juggling"];
if (chance(30)) shoplist1.push("Gravity");
if (chance(30)) shoplist1.push("Gavel");
//if (chance(30)) shoplist1.push("Sledgehammer");
var midtierdrops = ["Goggles", "Permapick", "Matchbook", "Technology", "God's Pick", pick(["Wispy Kaboom Smash", "Switchblade"]), "Tootsie Pop", "Energy Drink"];
var floor3items = ["Vacuum", "Occam's Razor", "Dice Pump", "Tension", "Adamant Rail", pick(["Hall of Daggers", "Devilsknife"]), "Blastdice Potion", "Stop Sign", "Popcorn", "Gatling Pea", pick(["Reverse Emulation","Supersonic"]), "Ice Skates", "Zeus Dagger"];
var commonlist2 = ["Sneksword", "Ale Bat", "Waltzer", "Janky Spanner", "Giga Drain", "Spirit Shield", pick(["Endless Pond", "Deva Form"]), "Present Shotgun", "Incapacitate", "Booster Pack", "Ubersaw", "Storm Reactor", "Stygian Blade", "Sand Hawk"];
commonlist2.push(pick(scrapitems));
var floor5items = ["Lucky Punch", "Russian Roulette", "Old Nail@2", "Renunciation", "Mass Grimoire", "Betelgeuse"];
var threeturnsitems = shuffle(["Tyrant's Glare", "Brimstone"]);
floor5items.push(threeturnsitems.pop());
if(chance(25)) floor5items.push(threeturnsitems.pop());

var vampireitem = ["BOOO!"];

var itempools = [floor1countdowns, scrapitems, floor1crap, commonlist1, shoplist1, midtierdrops, floor3items, commonlist2, floor5items, threeturnsitems, ["Gravity", "Gavel", "Eternal Cauldron", "Plug Socket", "Wispy Kaboom Smash", "Switchblade", "Hall of Daggers", "Devilsknife", "Reverse Emulation", "Supersonic", "Endless Pond", "Deva Form"]];

runscript("christmasspecial/checkgeneratorisaccurate",[itempools]);
//runscript("christmasspecial/checkgeneratorgadgetsexist",[itempools]);

trace(floor1countdowns);
/*
var myitempools = [floor1countdowns,scrapitems,floor1crap,commonlist1,shoplist1,midtierdrops,floor3items,commonlist2,floor5items,vampireitem];
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
floor1countdowns = dupeshuffle(floor1countdowns);
scrapitems = dupeshuffle(scrapitems);
floor1crap = dupeshuffle(floor1crap);
commonlist1 = dupeshuffle(commonlist1);
shoplist1 = dupeshuffle(shoplist1);
midtierdrops = dupeshuffle(midtierdrops);
floor3items = dupeshuffle(floor3items);
commonlist2 = dupeshuffle(commonlist2);
floor5items = dupeshuffle(floor5items);

trace(floor1countdowns);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [];
otherstuff = [
  shop(shuffle([floor1countdowns.pop(),floor1countdowns.pop(),floor1countdowns.pop()]), shuffle([2, 2, 1])),
  shop(shuffle([floor1crap.pop(),floor1crap.pop(),floor1crap.pop()]), shuffle([1, 2, 1])),
];
goodotherstuff = [
  shop(shuffle([scrapitems.pop(),scrapitems.pop(),scrapitems.pop()]), shuffle([1, 2, 1]))
];
var mycoolfloor1 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor1.theme = rand(['xmas1']);
mycoolfloor1.generate();
  
//Floor 2:
items = [];
gooditems = [];

otherstuff = [
  health(), 
  health()
];
goodotherstuff = [
  shop(shuffle([commonlist1.pop(),commonlist1.pop(),commonlist1.pop()]), shuffle([1, 2, 3])),
  shop(shuffle([shoplist1.pop(), shoplist1.pop(), pick(scrapitems)]), shuffle([2, 1, 1])),
  shop(shuffle([shoplist1.pop(),shoplist1.pop(),shoplist1.pop()]), shuffle([2, 2, 1])),
  shop(shuffle(["upgrade", shoplist1.pop(), pick(scrapitems)]), shuffle([2, 1, 2])),
  upgrade()
];
var mycoolfloor2 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand(['xmas1']);
mycoolfloor2.generate();

//Floor 3:
items = [];
gooditems = [];

otherstuff = [health()];
goodotherstuff = [
  shop(shuffle([scrapitems.pop(),floor3items.pop(),floor3items.pop()]), shuffle([1, 2, 1]))
  shop(shuffle([commonlist2.pop(), commonlist2.pop(), commonlist2.pop()])),
  shop(shuffle([midtierdrops.pop(),midtierdrops.pop(),midtierdrops.pop()]), shuffle([1, 2, 1])),
  shop(shuffle([commonlist2.pop(), commonlist2.pop(), commonlist2.pop()])),
  upgrade(),
  upgrade()
];
var mycoolfloor3 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['xmas2']);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [];
		
otherstuff = [health(), health()];
goodotherstuff = [
  shop(shuffle([floor1crap.pop(),shoplist1.pop(),floor1crap.pop()]), shuffle([3, 2, 1])),
  shop(shuffle([floor1crap.pop(),midtierdrops.pop(),floor1crap.pop()]), shuffle([1, 2, 1])),
  shop(shuffle([floor1crap.pop(),commonlist1.pop(),commonlist2.pop()]), shuffle([3, 2, 4]))
];
var mycoolfloor4 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['xmas3']);
mycoolfloor4.generate();
  
//Floor 5:
items = [];
gooditems = [];
		
otherstuff = [health(), health()];
goodotherstuff = [
  shop(shuffle([floor5items.pop(),floor5items.pop(),midtierdrops.pop()]), shuffle([2, 2, 1])),
  shop(shuffle([midtierdrops.pop(),midtierdrops.pop(),commonlist1.pop()]), shuffle([1, 2, 1])),
  shop(shuffle([commonlist2.pop(), "health", commonlist2.pop()])),
  shop(shuffle([shoplist1.pop(),commonlist1.pop(),shoplist1.pop()]), shuffle([2, 2, 1]))
];
		
var mycoolfloor5 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand(['xmas6']);
mycoolfloor5.generate();

//Floor 6:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [shop(["upgrade","BOOO!","BOOO!"]), shuffle([2, 2, 1])];   

var lastfloor = addfloor("boss");

lastfloor
  .additems(items, gooditems)
  .setlocation('BOSS')
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();