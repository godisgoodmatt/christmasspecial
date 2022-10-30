// Inventor Episode 2: Maintenance Protocols
var thisgenerator = "inventor_maintenance";
var floor1countdowns = ["Eggnog", "Sceptre", "Chain Knife", "Steamstaff", "Revolver", "Pinball Machine", "Drumkit"];
var jackpothelpers = ["Chaos Engineering", "Concatenate", "Increment", "Cooling Fan", "Fixed Payout"];
var floor1crap = ["Flicker","Pocket Sand","Washcloth","Create Opening","Chain Link","Ubernudge","Zoop Zoop","Loud Brostep", "Crazy Glue"];
var commonlist1 = ["Tennis Racket", "Umbrella", "Sharpie", "Bronze Medal", "Stockpick", "Waltzer", "Safety Scissors", "Natural Charm", "Glue Pact", "Plasma Rifle"];
var shoplist1 = ["Tennis Racket", "Scorpion", "Technology", "Rising Dagger", "Compact Resonator", "Burst Beam", "Repast Rapier", "Hand Sanitiser", "Spin Attack", pick(["Eternal Cauldron","Plug Socket"]), "Metal Crusher", "Iron Helmet", "Two Handed Spatula", "Contact Juggling"];
if (chance(30)) shoplist1.push("Gavel");
if (chance(30)) shoplist1.push("Sledgehammer");
var midtierdrops = ["Goggles", "Permapick", "Boston Basher", "Matchbook", "Technology", "God's Pick", pick(["Wispy Kaboom Smash", "Switchblade"]), "Tootsie Pop"];
var floor3items = ["Vacuum", "Occam's Razor", "Dice Pump", "Adamant Rail", pick(["Hall of Daggers", "Devilsknife"]), "Stop Sign", "Popcorn", "Gatling Pea", pick(["Reverse Emulation","Supersonic"]), "Ice Skates", "Zeus Dagger"];
var commonlist2 = ["Return Bicep Curls", "Sneksword", "Ale Bat", "Waltzer", "The Monarch", "Janky Spanner", "Spirit Shield", "Present Shotgun", "Incapacitate", "Ubersaw", "Storm Reactor", "Stygian Blade", "Sand Hawk"];
commonlist2.push(pick(jackpothelpers));
var floor5items = ["Lucky Punch", "Russian Roulette", "Old Nail@2", "Rigged Calculate", "Betelgeuse"];
var threeturnsitems = shuffle(["Tyrant's Glare", "Brimstone"]);
floor5items.push(threeturnsitems.pop());
if(chance(25)) floor5items.push(threeturnsitems.pop());

var vampireitem = ["BOOO!"];

var itempools = [floor1countdowns, jackpothelpers, floor1crap, commonlist1, shoplist1, midtierdrops, floor3items, commonlist2, floor5items, threeturnsitems, ["Gravity", "Gavel", "Eternal Cauldron", "Plug Socket", "Wispy Kaboom Smash", "Switchblade", "Hall of Daggers", "Devilsknife", "Reverse Emulation", "Supersonic"]];

runscript("christmasspecial/checkgeneratorisaccurate",[itempools]);

trace(floor1countdowns);
/*
var myitempools = [floor1countdowns,jackpothelpers,floor1crap,commonlist1,shoplist1,midtierdrops,floor3items,commonlist2,floor5items,vampireitem];
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
jackpothelpers = shuffle(jackpothelpers);
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
items = [pick(floor1countdowns),pick(jackpothelpers)];
gooditems = [pick(floor1crap)];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor1 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
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
  shop(shuffle([shoplist1.pop(), shoplist1.pop(), pick(jackpothelpers)]), shuffle([2, 1, 1])),
  shop(shuffle([shoplist1.pop(),shoplist1.pop(),shoplist1.pop()]), shuffle([2, 2, 1])),
  shop(shuffle(["upgrade", shoplist1.pop(), pick(jackpothelpers)]), shuffle([2, 1, 2])),
  upgrade()
];
var mycoolfloor2 = addfloor('inventorlarge').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand(['xmas1']);
mycoolfloor2.generate();

//Floor 3:
items = [commonlist2.pop(),commonlist2.pop()];
gooditems = [];

otherstuff = [health()];
goodotherstuff = [
  shop(shuffle([jackpothelpers.pop(),floor3items.pop(),floor3items.pop()]), shuffle([1, 2, 1]))
  shop(shuffle([commonlist2.pop(), commonlist2.pop(), commonlist2.pop()])),
  shop(shuffle([midtierdrops.pop(),"health",midtierdrops.pop()]), shuffle([1, 2, 1])),
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

var mycoolfloor6 = addfloor('boss').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor6.theme = rand(['bossy']);
mycoolfloor6.setlocation("BOSS");
mycoolfloor6.generate();