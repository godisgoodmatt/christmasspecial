/*var awesomelist = shuffle(["Bump", "Bump", "Nudge", "Nudge", "Spatula", "Spatula", "Spanner", "Spanner", "Lockpick", "Lockpick", "Doppeldice", "Doppeldice", "Duplicate", "Duplicate", "Table Slam", "Chocolate Cookie", "Hookshot", "Snake Eye Charm", "Square Pair", "Midnight Charm", "Half Moon Charm", "Counterfeit", "Hacksaw", "Crowbar", "Chisel", "Sine Wave", "Saw Wave", "Berlin Key", "Master Key", "Skeleton Key", "Blender", "Magic Key", "Woof Woof Woof", "Cauldron", "Spare 1", "Spare 2","Spare 3","Spare 4","Spare 5","Spare 6", "Illuminate", "Paper Lantern", "Picnic Basket", "Marmalade", "Befuddle", "Signal Jammer", "Cauldron", "Splitula", "Bronze Cauldron", "Mirror Cauldron", "Glass Cauldron", "Silver Cauldron", "Gold Cauldron", "Blood Cauldron", "Crucible", "Broken Mirror", "Hall of Mirrors", "Honey", "Lucky Roll", "Avalanche", "Smush Together", "Change Machine", "Rat", "Parity Flip", "Rerow", "Scrambler", "Obsidian Bauble", "Call for Backup Robot?", "Lollipop", "Subdivide", "Lucky Star", "Fury Spell", "Doppeltwice", "Budge", "Pip Master", "Disco Ball", "Giant Spatula", "Bearpick", "Magic Reroll", "Ungeradedice", "Candle", "Radicalise", "5patula", "Waterwheel", "Logistics Expert", "Half Moon Cauldron", "One I Prepared Earlier", "Dullplicate", "Bumper Sticker", "Murk", "Trinity Charm", "Luckpick", "Buzzsaw", "Eternal Cauldron", "Contact Juggling", "Dime", "Burner Phone", "Demote", "Rockfall", "Locktrick", "Mitosis", "Janky Spanner", "Metal Crusher", "Plug Socket", "Natural Charm", "Mass Grimoire", "Rock Crusher", "Shrug", "Star Cauldron", "Mirror Spatula", "Halfula", "Endless Pond", "Chain Link", "God's Pick", "Dice Pump", "Sharpie", "Transporter", "Fogged Mirror", "Decantation", "Caustic Cauldron", "Cactus Cauldron", "Wide Spatula", "Deva Form", "Permapick", "Vice Grip", "Countvalanche"]);*/
var vampireitem = ["Silver Sword"];

var simple = ["Bump", "Nudge", "Spatula", "Spanner", "Lockpick", "Doppeldice", "Duplicate", "Vise Grip", "Cauldron"];

var intermediate = [
// Other Vanilla
// Charms
"Snake Eye Charm", "Square Pair", "Midnight Charm", "Half Moon Charm",
// Keys
"Berlin Key", "Master Key", "Skeleton Key", "Magic Key",
// Dice Storage
"Illuminate", "Paper Lantern", "Picnic Basket", "Marmalade",
// Cauldrons
"Glass Cauldron", "Silver Cauldron", "Gold Cauldron", "Blood Cauldron", "Crucible",
// Fury and Reuse
"Woof Woof Woof", "Chocolate Cookie", "Hookshot", "Fury Spell",
// Misc
"Counterfeit", "Hacksaw", "Chisel", "Sine Wave", "Saw Wave", "Doppeltwice", "Lollipop", 
"Subdivide", "Smush Together", "Rat", "Change Machine", "Ungeradedice", "Signal Jammer",
"Honey", "Lucky Roll",

// Vanillaish
"Acorn Shield", "Pirate Hookshot", "Kitchen Tongs", "Allen Key", "Rubber Duck",

// Modded
"Dime", "Parity Flip", "Shrug", "5patula", "Rerow", "Scrambler", "Natural Charm",
"Caustic Cauldron", "Cactus Cauldron", "Halfula", "Radicalise", "Waterwheel", "Murk",
"Burner Phone", "Demote", "Locktrick", "Mitosis", "Janky Spanner", "Rock Crusher",
"Decantation", "Permapick", "Big Bump", "Big Nudge", "Duplishift", "Skewer", "Quadrality"
];

var advanced = [
// Vanilla
"Befuddle", "Blender", "Table Slam", "Crowbar", "Bearpick", "Giant Spatula", "Magic Reroll", 
"Candle", "Avalanche", "Splitula",

// Vanillaish
"Autotune", "Bicep Curl", "Bell Peppers",

// Modded
"Dupliduddle", "Eternal Cauldron", "Countvalanche", "Star Cauldron", "Dice Pump", "Wide Spatula",
"Luckpick", "Dullplicate", "One I Prepared Earlier", "Half Moon Cauldron", "Buzzsaw", "Bumper Sticker",
"Trinity Charm", "Rockfall", "Metal Crusher", "Plug Socket", "Chain Link", "God's Pick", "Sharpie",
"Transporter", "Fairy Lights", "Return Bicep Curls", "Bank Trade", "Copy Machine",
"Divine Rock Crusher", "Melon Cauldron"
];

var exotic = shuffle(["Lucky Star", "Disco Ball", "Logistics Expert", "Call for Backup Robot?", "Mass Grimoire", "Obsidian Bauble", "Sugar Rush", "Autohook"]);

var spare = shuffle(["Spare 1", "Spare 2","Spare 3","Spare 4","Spare 5","Spare 6", "Wizard's Hat", "Gambler's Paradice", "Hall of Mirrors"]);

advanced = shuffle(advanced);
intermediate.push(advanced.pop());
intermediate.push(advanced.pop());
intermediate.push(advanced.pop());
intermediate.push(advanced.pop());
intermediate = shuffle(intermediate);
simple.push(intermediate.pop());
simple.push(intermediate.pop());
simple = shuffle(simple);

//var awesomelist = shuffle(["Bronze Cauldron", "Mirror Cauldron", "Broken Mirror", "Hall of Mirrors", "Mirror Spatula", "Endless Pond", "Fogged Mirror", "Deva Form"]);

var music = shuffle(['xmas1', 'xmas2', 'xmas3', 'xmas10', 'xmas6']);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [simple.pop()];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand([music.pop()]);
mycoolfloor1.generate();

//Floor 2:
items = [intermediate.pop(), simple.pop()];
gooditems = [];
otherstuff = [health()];
goodotherstuff = [shop([simple.pop(), intermediate.pop(), intermediate.pop()])];


var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand([music.pop()]);
mycoolfloor2.generate();

//Floor 3:
items = [intermediate.pop(), exotic.pop()];
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([spare.pop(), intermediate.pop(), advanced.pop()], [4, 2, 3]),
  upgrade()
];

var mycoolfloor3 = addfloor('normal').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand([music.pop()]);
mycoolfloor3.generate();
  
//Floor 4:
items = [advanced.pop()];
gooditems = [];

otherstuff = [health()];
goodotherstuff = [
  trade(["any"], [advanced.pop()])
];

var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand([music.pop()]);
mycoolfloor4.generate();
  
//Floor 5:
items = [advanced.pop()];
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["health", exotic.pop(), "upgrade"], [4, 4, 4])
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