var level1 = rand(["Wolf Puppy","Magician","Space Marine","Gardener","Slime","Robobot","Frog","Rose","Penguin","Hothead"]);
var level2 = rand(["Elf","John Denver","Wizard","Dryad","Marshmallow","Baby Squid","Sticky Hands","Alchemist","Sterohead","Pirate","Sneezy"]);
var level3 = rand(["Gingerbread Man","Rudy","Heat Miser","Grinch","Sorceress","Keymaster","Bully","Handyman","Fireman","Yeti","Ms. Yeti","Haunted Jar","Cactus","Vacuum"]);
var level4 = rand(["Drain Monster","Aurora","Rhino Beetle","Dire Wolf","Kraken","Wicker Man","Snowman","Loud Bird","Rotten Apple","Wisp","Christmas Tree","Christmas Wizard","Polar Bear","Mall Cop"]);
var level5 = rand(["Ghost of Christmas Future","Cowboy","Rat King","Warlock","Banshee","Cornelius","Paper Knight","Skeleton","Singer","Gargoyle"]);

if(self.level == 2){
	reunion_transform(self,level1,true);
	sfx("_thinghappens");
} else if(self.level == 3){
	reunion_transform(self,level2,true);
	sfx("_thinghappens");
} else if(self.level == 4){
	reunion_transform(self,level3,true);
	sfx("_thinghappens");
} else if(self.level == 5){
	reunion_transform(self,level4,true);
	sfx("_thinghappens");
} else if(self.level == 6){
	reunion_transform(self,level5,true);
	sfx("_thinghappens");
}