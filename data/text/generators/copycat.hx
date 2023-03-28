var music = shuffle(['xmas1', 'xmas2', 'xmas3', 'xmas10', 'xmas6']);

usestandardenemies();

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];

//Floor 1:
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];
var mycoolfloor1 = addfloor('tiny').additems(items, gooditems);
mycoolfloor1.theme = rand([music.pop()]);
mycoolfloor1.generate();

//Floor 2:
items = [];
gooditems = [];
otherstuff = [health()];
goodotherstuff = [];
var mycoolfloor2 = addfloor('small').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor2.theme = rand([music.pop()]);
mycoolfloor2.generate();

//Floor 3:
items = [];
gooditems = [];

otherstuff = [health(), health()];

var mycoolfloor3 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor3.theme = rand([music.pop()]);
mycoolfloor3.generate();
  
//Floor 4:
items = [];
gooditems = [];
otherstuff = [health()];
goodotherstuff = [];
var mycoolfloor4 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor4.theme = rand([music.pop()]);
mycoolfloor4.generate();
  
//Floor 5:
items = [];
gooditems = [];

otherstuff = [health(), health()];
goodotherstuff = [];

var mycoolfloor5 = addfloor('big').additems(items, gooditems).addotherstuff(otherstuff, goodotherstuff);
mycoolfloor5.theme = rand([music.pop()]);
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