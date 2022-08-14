var awesomelist = shuffle(["Bump", "Bump", "Nudge", "Nudge", "Spatula", "Spatula", "Spanner", "Spanner", "Lockpick", "Lockpick", "Doppeldice", "Doppeldice", "Duplicate", "Duplicate", "Table Slam", "Chocolate Cookie", "Hookshot", "Snake Eye Charm", "Square Pair", "Midnight Charm", "Half Moon Charm", "Counterfeit", "Hacksaw", "Crowbar", "Chisel", "Sine Wave", "Saw Wave", "Berlin Key", "Master Key", "Skeleton Key", "Blender", "Magic Key", "Woof Woof Woof", "Cauldron", "Spare 1", "Spare 2","Spare 3","Spare 4","Spare 5","Spare 6", "Illuminate", "Paper Lantern", "Picnic Basket", "Marmalade", "Befuddle", "Signal Jammer", "Cauldron", "Splitula", "Bronze Cauldron", "Mirror Cauldron", "Glass Cauldron", "Silver Cauldron", "Gold Cauldron", "Blood Cauldron", "Crucible", "Broken Mirror", "Hall of Mirrors", "Honey", "Lucky Roll", "Avalanche", "Smush Together", "Change Machine", "Rat", "Parity Flip", "Rerow", "Scrambler", "Obsidian Bauble", "Call for Backup Robot?", "Lollipop", "Subdivide", "Lucky Star", "Fury Spell", "Doppeltwice", "Budge", "Pip Master", "Disco Ball", "Giant Spatula", "Bearpick", "Magic Reroll", "Ungeradedice", "Candle", "Radicalise", "5patula", "Waterwheel", "Logistics Expert", "Half Moon Cauldron", "One I Prepared Earlier", "Dullplicate", "Bumper Sticker", "Murk", "Trinity Charm", "Luckpick", "Buzzsaw", "Eternal Cauldron", "Contact Juggling", "Dime", "Burner Phone", "Demote", "Rockfall", "Locktrick", "Mitosis", "Janky Spanner", "Metal Crusher", "Plug Socket", "Natural Charm", "Mass Grimoire", "Rock Crusher", "Shrug", "Star Cauldron", "Mirror Spatula", "Halfula", "Endless Pond", "Chain Link", "God's Pick", "Dice Pump", "Sharpie", "Transporter", "Fogged Mirror", "Decantation", "Caustic Cauldron", "Cactus Cauldron", "Wide Spatula", "Deva Form", "Permapick", "Vice Grip"]);
var strangeshop = shuffle(["Backup Plan", "Pocket Rock"]);
var vampireitem = ["Silver Sword"];

var combatmusic = ['xmas1', 'xmas2', 'xmas3', 'xmas6'];

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
  .setmusic(rand(combatmusic))
  .generate();

//Floor 2:
items = [];
gooditems = [awesomelist.pop()];
otherstuff = [health()];
goodotherstuff = [shop([awesomelist.pop(), awesomelist.pop(), awesomelist.pop()])];

addfloor("small")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .setmusic(rand(combatmusic))
  .generate();

//Floor 3:
items = [];
items.push(awesomelist.pop());
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([awesomelist.pop(), awesomelist.pop(), awesomelist.pop()]),
  upgrade()
];

addfloor("normal")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .setmusic(rand(combatmusic))
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
  .setmusic(rand(combatmusic))
  .generate();
  
//Floor 5:
items = [];
items.push(awesomelist.pop());
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["health", strangeshop.pop(), "upgrade"], [4, 4, 4])
];

addfloor("big")
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .setmusic(rand(combatmusic))
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