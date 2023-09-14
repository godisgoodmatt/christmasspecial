var damr= shuffle(["Bloody Drill@r", "Frosty Bufu@r", "Dynamite Shotgun@r", "Sandbag@r", "Doom and Gloom@r", "Blighted Zap@r", "Christmas Revolver@r", "Nine Iron@r", "Gatling Pea@r", "Electric Arc@r", "Countvalanche@r"]);
var damb = shuffle(["Bloody Drill@b", "Frosty Bufu@b", "Dynamite Shotgun@b", "Sandbag@b", "Doom and Gloom@b", "Blighted Zap@b", "Christmas Revolver@b", "Nine Iron@b", "Gatling Pea@b", "Electric Arc@b", "Countvalanche@b"]);
var dicer = shuffle(["Dice Printer@r", "Copy Machine@r", "Wide Spatula@r", "Cactus Cauldron@r", "Christmas Pistol@r", "Budge@r", "Pip Master@r"]);
var diceb = shuffle(["Dice Printer@b", "Copy Machine@b", "Wide Spatula@b", "Cactus Cauldron@b", "Christmas Pistol@b", "Budge@b", "Pip Master@b"]);
var robotr = shuffle(["Bunker Buster@r", "Binary Code@r", "Encryption@r", "Password@r", "Antivirus@r", "Cooling Dagger@r", "The Deal Offer@r"]);
var robotb = shuffle(["Bunker Buster@b", "Binary Code@b", "Encryption@b", "Password@b", "Antivirus@b", "Cooling Dagger@b", "The Deal Offer@b"]);
var neutral = shuffle(["Pip Master"]);

var itempools = [damr, damb, dicer, diceb, robotr, robotb, neutral];
var music = shuffle(['xmas1', 'xmas2', 'xmas3', 'xmas10', 'xmas6']);

runscript("christmasspecial/checkgeneratorisaccurate",[itempools]);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
items = [];
gooditems = [rand([damr.pop(),damb.pop()])];
otherstuff = [];
goodotherstuff = [];
var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand([music.pop()]);
mycoolfloor1.generate();

//Floor 2:
items = [rand([dicer.pop(),robotr.pop()])];
gooditems = [rand([diceb.pop(),robotb.pop()])];
otherstuff = [health()];
goodotherstuff = [shop([rand([damr.pop(),damb.pop()]), rand([dicer.pop(),diceb.pop()]), rand([robotr.pop(),robotb.pop()])])];
var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand([music.pop()]);
mycoolfloor2.generate();

//Floor 3:
items = [rand([robotr.pop(),robotb.pop()])];
gooditems = [rand([damr.pop(),damb.pop()])];

otherstuff = [health(), health()];

goodotherstuff = [
  upgrade()
];
var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand([music.pop()]);
mycoolfloor3.generate();
  
//Floor 4:
items = [rand([robotr.pop(),robotb.pop()])];
gooditems = [rand([damr.pop(),damb.pop()])];

otherstuff = [health()];
goodotherstuff = [
  trade(["any"], [neutral.pop()])
];

var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand([music.pop()]);
mycoolfloor4.generate();
  
//Floor 5:
items = [rand([damr.pop(),robotr.pop()])];
gooditems = [rand([damb.pop(),robotb.pop()])];

otherstuff = [health(), health()];
goodotherstuff = [
  upgrade(),
  shop([rand([dicer.pop(),diceb.pop()]), rand([damr.pop(),damb.pop()]), "health"], [4, 4, 4])
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