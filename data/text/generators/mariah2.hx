// Items:
// Spiked Sword|Plated Shield, 365 Days of Christmas|Burnt Out, Gift To Me|Gift To You,
// On The Flipside|On The Flipside, Red Stripes|White Stripes, Spanning Lockpick|Lockpicking Spanner
// Nudging Bump|Bumping Nudge, Doppeling Duplicate|Duplicating Doppeldice, Verse|Chorus
// Fit of Rage|Chill Out, Boomerang Throw|Boomerang Catch, Skippity Bop|Do Wop
// Mistletoe|Holly Spikes, Black Friday|Cyber Monday, Christmas Spirit|Joy of Giving
// Cookies|Milk
// Peaceful Strum|Angry Strum, Copyright|Free Use, Touch My Body|Don't Touch My Body
// Obsessed|It's A Wrap, Constant Note|Constant Note

var vampireitem = ["Silver Sword"];

var basicItems = ["Red Stripes", "White Stripes", "Spiked Sword", "Plated Shield", "Boomerang Throw", "Cookies", "Milk", "Touch My Body", "Don't Touch My Body", "Obsessed", "It's A Wrap"];
var diceItems = ["Spanning Lockpick","Lockpicking Spanner", "Nudging Bump", "Bumping Nudge", "Doppeling Duplicate", "Duplicating Doppeldice"];
var uniqueItems = ["365 Days of Christmas","Gift To Me", "On The Flipside", "Fit of Rage", "Copyright", "Free Use"];
var noteItems = ["Peaceful Strum", "Angry Strum", "Verse", "Chorus", "Constant Note"];
var manaItems = ["Mistletoe", "Holly Spikes", "Black Friday", "Cyber Monday", "Christmas Spirit", "Joy of Giving"];

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

usestandardenemies();

//Floor 1:
items = [diceItems.pop()];
gooditems = [];
otherstuff = [];
goodotherstuff = [];
var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand(['music_mariahlow']);
mycoolfloor1.setlocation("GAMESHOW");
mycoolfloor1.generate();

//Floor 2:
items = [basicItems.pop()];
gooditems = [noteItems.pop()];
otherstuff = [health(), health()];
goodotherstuff = [
  shop([uniqueItems.pop(), noteItems.pop(), manaItems.pop()], [3, 2, 2])
];
var mycoolfloor2 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = mycoolfloor1.theme;
mycoolfloor2.setlocation("GAMESHOW");
mycoolfloor2.generate();

//Floor 3:
items = [basicItems.pop()];
gooditems = [manaItems.pop()];
otherstuff = [upgrade(), health(), health()];

goodotherstuff = [
  shop([uniqueItems.pop(), diceItems.pop(), noteItems.pop()], [3, 2, 2])
];
var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand(['music_mariahlow']);
mycoolfloor3.setlocation("GAMESHOW");
mycoolfloor3.generate();

//Floor 4:
items = [basicItems.pop()];
gooditems = [noteItems.pop()];

otherstuff = [upgrade(), health()];
goodotherstuff = [];
var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand(['music_mariahhigh']);
mycoolfloor4.setlocation("GAMESHOW");
mycoolfloor4.generate();
  
//Floor 5:
items = [basicItems.pop()];
gooditems = [basicItems.pop()];

otherstuff = [health()];
goodotherstuff = [
  shop([uniqueItems.pop(), manaItems.pop(), "upgrade"], [4, 4, 4])
];

var mycoolfloor5 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand(['music_mariahhigh']);
mycoolfloor5.setlocation("GAMESHOW");
mycoolfloor5.generate();

// Floor 6:            
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

var mycoolfloor6 = addfloor('boss').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor6.theme = rand(['music_mariahboss']);
mycoolfloor6.setlocation("boss");
mycoolfloor6.generate();