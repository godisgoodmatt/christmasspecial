function setupenemy(enemy, newhp, newdice, newequipment){
  Rules.changeenemyequipment(enemy, newequipment);
  Rules.changeenemydice(enemy, newdice);
  Rules.changeenemyhp(enemy, newhp);
}

function setupenemywithinnate(enemy, newhp, newdice, newequipment, newinnate){
  setupenemy(enemy, newhp, newdice, newequipment);
  Rules.changeenemyinnate(enemy, newinnate);
}

setupenemy('Frog', 10, 2, ['Boxed Sword','Boxed Shield']);
setupenemywithinnate('Gardener', 12, 2, ['Jackhammer','Tomato Throw'], ['Weaken is now Weaken?']);
setupenemywithinnate('Hothead', 12, 2, ['Flamed Ball'], ['weakice']);
setupenemy('Robobot', 14, 5, ['Durable Ray Gun']);
setupenemy('Magician', 10, 1, ['Misdirection']);
setupenemy('Rose', 15, 2, ['Thorny Whip','Thorn Bush']);
setupenemy('Slime', 16, 3, ['Melt','Melt']);
setupenemy('Space Marine', 9, 2, ['T Minus','Comet','Comet']);
setupenemy('Penguin', 10, 3, ['Divine Peck']);
setupenemy('Wolf Puppy', 12, 2, ['Nibble']);
setupenemy('Sticky Hands', 28, 1, ['Repulsive Sticky Hand']);
setupenemy('Alchemist', 28, 3, ['Vorpal Coating','Conducting Coating','Sugar Coating','Frozen Coating','Broken Bottle']);
setupenemy('Baby Squid', 24, 3, ['Inky Splotch','Blender','Fireworks','Fireworks']);
setupenemy('Dryad', 26, 4, ['Tree Sap','Poison Berry']);
setupenemy('Marshmallow', 28, 1, ['Snowflake Ornament','Fire Ornament','Armor Ornament','Food Ornament','Repeating Ornament','Wind Ornament']);
setupenemy('Elf', 26, 4, ['Gumdrop','Candy Cane Dagger']);
setupenemywithinnate('John Denver', 28, 2, ['Timely Infinity'], ['gaindice']);
setupenemy('Pirate', 28, 3, ['Candy Cannon','Candy Cannon']);
setupenemy('Sneezy', 26, 3, ['Antihistamine','Allergy','Allergy','Allergy']);
setupenemywithinnate('Stereohead', 28, 4, ['Boombox','Cassette Tape'], ['Is strong against weaken']);
setupenemy('Wizard', 28, 1, ['Abra','Cadabra']);
setupenemy('Bully', 38, 2, ['Mine']);
setupenemy('Cactus', 36, 3, ['Thorn Bush','Thorn Bush','Cactus Spear']);
setupenemy('Fireman', 38, 3, ['Melting Touch','Flame Ball','Flame Ball']);
setupenemy('Handyman', 36, 2, ['Spanner','Nail','Power Drill']);
setupenemywithinnate('Haunted Jar', 36, 4, ['Poison Splash','Poison Spill','Poison Spill@odd','Toxic Roll'], ['absorbpoison']);
setupenemy('Keymaster', 36, 2, ['Nudge','Bump','Lockpick','Lockpick','Lockblaster']);
setupenemy('Sorceress', 34, 3, ['Karma Cauldron','Karmic Infliction','Karma Cauldron','Karmic Infliction','Karma Consequences']);
setupenemy('Vacuum', 40, 2, ['Soul Suck','Suck']);
setupenemy('Yeti', 38, 2, ['Cave Rumble','Icicle','Icicle','Icicle','Icicle','Icicle','Icicle']);
setupenemy('Drain Monster', 36, 4, ['Slime Ball','Slime Ball','Mancover Hit']);
setupenemy('Gingerbread Man', 34, 2, ['Red Gumdrop','Purple Gumdrop','Green Gumdrop','Blue Gumdrop','Yellow Gumdrop','Hall Of Mirrors']);
setupenemywithinnate('Ms. Yeti', 36, 4, ['Bake','Slushie Machine'], ['strongice']);
setupenemy('Rudy', 38, 4, ['Bright Red Glow','Locking Antlers','Stomping Hoofs','Stomping Hoofs']);
setupenemy('Aurora', 44, 4, ['Storm Surge','Storm Surge','Storm Surge','Storm Surge']);
setupenemy('Dire Wolf', 42, 4, ['Scritch','Scratch','Scratch']);
setupenemy('Kraken', 42, 4, ['Tentacle Grab','Tentacle Wack']);
setupenemy('Loud Bird', 44, 4, ['Honk','Flap Flap','Power Quack']);
setupenemy('Rhino Beetle', 48, 4, ['Rhino Ram','Rhino Ram','Rhino Ram','Rhino Ram']);
setupenemy('Rotten Apple', 44, 2, ['Worm']);
setupenemy('Polar Bear', 42, 2, ['Slice','Bloody Bite']);
setupenemy('Snowman', 44, 4, ['Snowball Effect','Snowball Machinegun','Snowball']);
setupenemy('Wicker Man', 46, 2, ['Candle Light','Wicker Weave']);
setupenemy('Wisp', 44, 3, ['Blighted Fire','Blighted Fire']);
setupenemy('Banshee', 52, 3, ['Shrieking Cry','Shriek Sword','Siren Song']);
setupenemy('Bounty Hunter', 50, 4, ['Yoink','Yoink','Plasma Blaster','Plasma Blaster']);
setupenemy('Cornelius', 100, 0, ['Bump','Spatula','Nightmare']);
setupenemy('Cowboy', 44, 3, ['Peacekeeper','Flashbang','Combat Roll@Cowboy']);
setupenemy('Gargoyle', 48, 4, ['Perch','Piercing Glare']);
setupenemy('Paper Knight', 48, 4, ['Paper Cut','Paper Cut','Hand Sanitizer']);
setupenemy('Rat King', 48, 1, ['Poison Crown','Rat Messenger','Detonator']);
setupenemy('Singer', 48, 4, ['Basic Baritone','Opera','Pitch Poison','Emotions']);
setupenemy('Skeleton', 46, 3, ['Bone Throw','Bone Throw','Femur Throw']);
setupenemy('Warlock', 48, 2, ['Mysterious Chuckle']);
setupenemy('Mariah Carey', 80, 5, ['Basic Baritone','Opera','Pitch Poison','Random Note','Highest Note']);

var colours = shuffle(["Something Red","Something Blue","Something Purple","Something Orange","Something Yellow","Something Green","Something Pink","Something Gray","Something Warm","Something Cold"]);
var themes = shuffle(["A Maneuver","A Gun","A Maneuver","A Spell","A Flower","A Bonus","Something Large","A Finale","A Scrap"]);
var vampireitem = ["Silver Sword"];

runscript("christmasspecial/checkgeneratorisaccurate",[[colours, themes, vampireitem]]);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [themes.pop()];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand(['xmas1']);
mycoolfloor1.generate();

//Floor 2:
items = [];
gooditems = [colours.pop()];
otherstuff = [health()];
goodotherstuff = [shop([colours.pop(), colours.pop(), colours.pop()])];

var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand(['xmas1']);
mycoolfloor2.generate();

//Floor 3:
items = [];
items.push(themes.pop());
gooditems = [];

otherstuff = [health(), health()];

goodotherstuff = [
  shop([themes.pop(), colours.pop(), themes.pop()]),
  upgrade()
];

var mycoolfloor3 = addfloor('normal').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['xmas2']);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [themes.pop()];

otherstuff = [health()];
goodotherstuff = [
  trade(["any"], [themes.pop()])
];

var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['xmas3']);
mycoolfloor4.generate();
  
//Floor 5:
items = [];
items.push(colours.pop());
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop(["upgrade", themes.pop(), "health"], [4, 4, 4])
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