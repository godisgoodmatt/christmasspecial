12/24/2021 bert
- fixed weird deprecated coffee pot- script (rolled a new dice, the dice you put in, and the dice minus 1)
- nerfed frozen slash by taking away its free2
- tree shake's description now correctly reflects that you receive 2-4 ornaments
- copycat and grinch are now excluded from warrior
- nicholas is now excluded from thief
- next tome can no longer be furied
- copycat is now excluded from witch
- nerfed chaingun (now needs even and does 3 damage)
- chaingun now works on dodge
- snowball machinegun now attacks once on dodge (similarly to tetraphobia)
- ice skates and fire boots now upgrade correctly
- creative crisis's description is now clearer
- all gadgets now properly break after finishing a battle with creative crisis used
- removed the weird changeslots shenenigans creative crisis was doing (doesn't work great with combination slots) and just made it once per battle
- creative crisis and consumerism statuses are no longer invisible

12/23/2021 diane
- grinch no longer shows up for lady luck
- witch rules no longer bleed offscreen
- blessed bowl (random warrior item) no longer crashes the game

12/23/2021 bert
- popcorn no longer crashes the game (previously it used mf's special version of illuminate, "lightstatus")


release!


12/23/2021 diane
- divine grip's description now fits
- divine grip no longer crashes
- changed episode names so none of them are just "winter x"
- rewrote something large's description to be a little less confusing
- rewrote waltzer's jinx to mention it repeats
- replaced neypah's redundant credit for "mod item additions" with a credit to matt for concepts
- per matt's request, readded a DnD reference ("dungeon master") in robot's cutscene
- per matt's request, added more thief sound clips in thief's cutscene
- wheel win dialogue in episodecomplete_mummy now has voice clips for the player
- tweaked thief's wheel win dialogue a bit

12/23/2021 diane & geddy
- diane: sponge now grows correctly after combat
- diane: christmas pistol's description is clearer
- diane: fixed selfvar displays for unavailable chained jester items
- diane: fixed magic axe boosting countdowns by 3 instead of 4
- diane: replaced "tear down this wall" thief levelup reward with "come on and slam" (tdtw is a hammerlike where "on even, set a dice to d6", coas is a hammerlike where "on 6, reroll all your dice", the latter of which i think is more in the spirit of skeleton key)
- diane: nerfed self consume
- diane: judgement and random judgement are now normal-slot
- geddy: divine grip now returns 2 random dice on doubles (so it's not literally just vise grip but size 2) and is no longer excludefromrandomlists
- geddy: revised lady luck's rules to say you *shouldn't* equip more than one item rather than you *can't*

12/23/2021 buster, bert, diane
- buster: fixed scrap crystal having no sfx
- buster: fixed revelation, in order: erroring, casting forward, and giving blessings to the enemy instead of you
- bert: fixed passives with effects in before start turn, like hot table, applying twice if you're warrior
- bert: added more passive equipment for A Bonus
- bert: added rainmaking for Something Large
- bert: marked slushie, sing, tree shake, stygian blade, divine grip, and luck omen as excludefromrandomlists
- bert: rewrote A Spell to specify it just has to be a *valid* witch spell
- bert: retooled A Flower to be a mana generator instead of just any mana equipment
- bert: added more mana-generating equipment for A Flower
- diane: fixed thief's generator never being shuffled
- diane: some if(simulation) wrapping for thief items
- diane: excluded nicholas from thief's episode due to gift bag giving thief too many items
- diane: main menu credits now point out that they're incomplete and player must beat an episode to view full credits
- diane: changed credits music to angelmoon's ice stage remix
- diane: tidied up the credits a bit
- diane: excluded bounty hunter from jester becasue making cards unavailable for reasons other than chain doesn't work right
- diane: fixed offset of christmas ghosts

12/22/2021 geddy, buster, bert, titku, diane
- geddy: credits now show after an episode even if you dont win the wheel spin (since the menu credits are broken)
- geddy: scrooge is now unencounterable
- buster: fixed technology not having sfxdamage
- buster: fixed consumerism changing its slots to 2 needs 6 slots
- geddy: bunch of fixes to creative crisis because my kludgefix for consumerism adding extra invisible broken gadgets messes up broken gadgets in a complicated way
- geddy: removed gadget smash (didnt make sense since inventor has 2 gadgets in christmas special)
- buster: inventor no longer gets veneer since it's right before bronze medal, which is almost strictly worse
- buster: added 2 more items and put them in inventor's generator to accommodate for the above 2 changes (murk and zoop zoop from ncrmod)
- titku & bert: polished robot and witch cutscenes
- bert: made some more misc. dialogue revisions
- bert: polished lady luck's character description
- diane: caught all non-spell equipment in witch's generator
- titku: (per matt) made ultra mariah carey have 3 dice
- titku: (per matt) made song removed on end turn rather then on countdown reduce
- geddy: (per matt) removed present because it crashed the ai a lot with the items it got
- geddy: fixed tyrant's glare having no gadget
- diane: added some utility scripts to check if each item in a generator 1. is a valid item, 2. is a valid witch spell, or 3. has a valid gadget

12/20/2021 bert
- added catastrophe (missing from witch generator)
- plethora of witch generator fixes
- fixed several items missing spellcosts
- added excludefromrandomlists to some vanilla items brought in by witch that were missing it
- booo! now has a witch spell cost
- unused "winterventor" levels can no longer come up
- "bigi" levels have been reamed "inventorlarge" to avoid coming up when a "big" level is requested
- fixed crash with shockcast actuator missing an end brace
- actuators in foocast now stop old instances of them before starting
- changed nospellbook icon to be the same color as its defined color in symbols.csv (somewhat more parseable)
- per fiship: readded missing functionality for spellbook bans in witch spellbook
- fixed wrong ordinal suffices on spellbook names when banned (e.g. "1rd spellbook")
- marked luck omen as excludefromrandomlists
- upgradecast taking effect now makes the upgraded card flash and shake, and make the "upgradeequipment" sfx
- changed order of credits_01 and credits_03
- added yet more episodes to credits.csv
- updated credits.txt a bit

12/20/2021 brej
fixed some duplicate stuff caused by merging the below update

12/20/2021 fiship
(bunch of witch stuff)

12/19/2021 bert, buster, black widow, & brej
- brej: timely demise has been reworked to avoid accessibility issues - formerly it did 1 damage to you every second (later nerfed to every 2 seconds), but this would cause unfairness for players who physically can't react very fast. plus it was out of place in a largely non-realtime game. timely demise now makes you lose 1 health per equipment used, identical to bleed but stacking differently
- bert: renamed ncrmod's "magic axe" to "ephemeral axe" to avoid conflict with fiship's "magic axe"
- buster: a little more polish for win dialogue
- buster: (per matt) marked gift bag and contained blast excludefromrandomlists
- bert: present shotgun now has a gadget (emulator)
- bert: deva form is no longer marked as a finale card since CS uses it as a normal card
- bert: added several more finale cards to be selected by A Finale (including an unfinished unnamed card from ncrmod's upcoming pu update, which black widow named and got working)
- bert: removed magic pink from dice_1080.png, which manifested as the logo having a magenta background in the credits (used it as a visual aid to mark fully transparent areas, forgot to undo it)
- bert: fixed some slight jank on the christmas special logo which may have been caused by pasting it on top of the old logo without actually removing the old logo underneath
- bert: nerfed krampus head (odd -> doubles)
- bert: (per matt) fixed judgement@fullhp having wrong script
- brej: (per matt) divine killer no longer says "no effect on bosses"
- brej: (per matt) nerfed soul crush-
- bert: added crazy glue to inventor generator as floor 1 crap
- bert: (per matt) removed upgrade from lady luck floor 5
- bert: plight now says "alt poison" instead of "PU poison" due to a playtester not understanding the term "PU"
- bert: added thermostat and hot table fron ncrmod as passive items for A Bonus
- bert: present shotgun now ignores items with the "nomidturnsummon" tag
- bert: stopwatch is now marked nomidturnsummon
- bert: fixed burst beam not fetching your limit value for its description until you use an item
- bert: fixed scrap sleet only inflicting 1 slush rather than 2
- bert: added more info about status icons to credits.txt

12/19/2021 diane & buster
- diane: dodge no longer breaks jester
- diane: regeneration spell and sweet spell's downgrades are no longer "noffect"
- diane: fixed misspelling of gumball machine in witch generator ("gumbal machine")
- buster: polished characters.csv a bit (also rewrote the joke description for robot, and made jester's description fit)
- buster: changed jester's idle pose in the character select to defiant_idle, which inadvertently solves the problem of lady luck and jester having the same idle pose
- buster: polished lady luck's cutscene
- buster: polished some of the win dialogue

12/18/2021 matt
fixed fiships generator awaiting vanilla items
Added wibis logo to the title screen

12/18/2021 gost & diane
- gost: fixed missing bracket in fiship's generator
- gost: marked final frost excludefromrandomlists (per matt's request)
- gost: visual rehaul of "christmas special" logo (was very jagged and miscoloured in parts)
- gost: "a spell" pool no longer inexplicably includes christmas star (which references the spellbook)
- diane: old nail is now marked excludefromrandomlists (caused problems getting it through present shotgun and then turning it into sharpened nail)
- diane: removed a hackier duplicate of endless winter
- diane: timely demise now only deals damage once every 2 seconds


12/18/2021 fiship
(added newer version of witch generator)

12/17/2021 diane
- fixed several items having a change_power upgrade but no actual upgraded versions. this is very likely the source of all cases of warrior failing to get equipment
- wheel of fortune and amp are now marked excludefronrandomlists
- readded renunciation (still in inventor's generator)
- gift bag and tree shake now have a 1-turn cooldown rather than only being available on odd turns (as requested by matt)
- fixed a pole+, a finale+, and a merry christmas+ and returning small equipment
- when not mario's "something (color)" themecards fail to provide an upgraded version of an equipment, the themecards should now report their own name properly

12/17/2021 geddy
- fixed snow cover giving you random dice instead of 1s
- removed duplicate "yes this is the stuff that's supposed to be in \_append but was tagged fd" items in data/text/equipment.csv

12/17/2021 matt
(readded some shit that was missing from equipment.csv because libreoffice just yote changes out the window)

12/17/2021 geddy
- i forgot a semicolon in the new snow cover script i swear to fucking god

12/17/2021 bert
- added some missing stuff from fiship's commit

12/17/2021 gost & bert
- gost: the divine killer and its skill counterpart now have the same description
- bert: something large+ no longer tries to return a small equipment
- bert: new themecards by not mario now indicate they only fetch equipment of the same size
- per fiship: moved non-furtherdungeons equipment to \_append/data/equipment.csv
- per fiship: added more original equipment while removing some other original equipment (can be seen in fiship's scrapped items.csv)
- bert: gadget smash is no longer incorrectly lumped in with fd items
- bert: sponge now checks that there's enough space left for it to become large, just in case
- bert: added more stuff to inventor's generator (particularly floor1crap and floor1countdowns)

12/17/2021 gost
- fixed third place cauldron not rerolling dice
- fixed mf_healnextturn not being removed on start turn
- the deal offer and cooling dagger are now marked robotonly

12/17/2021 not mario
- added level up rewards to warrior
- some bugfixes

12/16/2021 geddy
per matt: added a lady luck cutscene & an introduction line

12/16/2021 geddy
- added angelmoon's ice atmos
- actually fixed consumerism for actual this time (previously it didn't properly reset your gadget amount)
- fixed consumerism not properly resetting skillcard height once you're back to 2 gadgets
- rewrote snow cover to be less eye-burning under the hood
- per matt: removed tennis racket from robot
- "path spell" equipment is now marked excludefromrandomlists
- booby trap is now marked excludefromrandomlists

12/16/2021 gost & geddy
- gost & geddy: fixed consumerism. matt originally made a pr whose description was literally nothing but the line above, and instead of fixing it he actually replaced it entirely with an entirely different equipment (which also didn't work)
- geddy: fixed missing eternitycannon status icon

12/16/2021 buster & titku
- rewrote the rules for each episode (except witch, which seems fine as-is)
- buster: jester no longer arbitrarily excludes random enemies
- buster: inventor no longer calls Rules.mixedupshops(); in start game script (which probably didn't even do anything)

12/16/2021 diane
fixed some references to nonexistent skill "Against All Odds_old" (closest skill is "Against all odds_old")

12/16/2021 matt
bunch of stuff by matt basically, including cutscene work

12/16/2021 not mario
- fixed themecards

12/16/2021 not mario
- implemented most remaining themecards
- changed warrior generator
- just yoinked some yme stuff
- merged in some of fiship's changes

12/14/2021 bert & buster
- bert: implemented some feedback from terry for warrior: your skillcard is now combat roll, card reroll is your limit break, and you only receive 1 card per themecard
- bert: added new credits art by hinata, fixed credits_01
- bert: fixed missing sfx for gravity
- buster: added jester cutscene by matt101
- buster: changed warrior cutscene dialogue to be relevant to final warrior gimmick
- buster: grammar pass on all cutscenes
- buster: replaced robot cutscene with a placeholder because we need a new one since the focus of the episode changed. Fuck

12/12/2021 gost
- fixed wrong syntax for case statement in episodecomplete_mummy
- fixed missing win-wheel-spin dialogue for witch

12/11/2021 gaetana & diane of wibi
- gaetana & diane: thief generator is now entirely distinct from jester generator
- gaetana & diane: ported several new items for thief
- gaetana: updated flea shooter to its newest iteration as seen in grabbag
- per matt: inventor generator no longer crashes
- gaetana: fixed hall of daggers not resetting its damage after combat
- gaetana: fixed base "no effect" version of reverse emulation potentially causing a crash from an ill-formed comment due to https://github.com/TerryCavanagh/diceymodgeons/issues/59 ... again
- diane: waltzer's jinx now mentions that it repeats
- diane: added metadata to angelmoon's new track
- diane: dialog after winning the wheel spin now depends on what character you are (still placeholdery)
(entry written by diane)

12/11/2021 matt101 (he forgot to write this)
- adds music to all episodes (robot and lady luck excluded)
- added some more soundevents for the music
- renamed all big generators from bigwinterinventor to bigi 
- (added a new track by angelmoon; not mentioned)


12/9/2021 bert & gost
- fixed crash when using compact resonator
- gost: replaced nospellbook icon with the icon we made that fiship used
- gost: merged in fiship's lost iron helmet nerf
- gost: added gadgets to goggles and study
- gost: more wip thief generator work

12/9/2021 bert
- subdivide is now in base equipment list
- per matt: added a few more new items
- per matt: added items to thief, inventor, and robot generators
- renamed "read" to "study"
- made goggles size 2

12/9/2021 bert
- thief can no longer "share" once per battle equipment that's already been used
- started work on thief generator (not actually used yet, & references some items that are not yet implemented)
- fixed ncr_snap not disappearing on your turn and working improperly with enemies
- renamed "special package" to "booby trap"

12/8/2021 buster
- fixed crash when using create opening
- fixed crash when using jester's glove+ or jester's glove-
- removed loads of Nulls that appeared in numerous places in the last column of spreadsheets
- thief now starts with christmas dagger instead of normal dagger
- christmas dagger now changes colors before execute (which actually took quite a while to rig up), and not at other arbitrary hooks
- nerfed christmas dagger+ ("heal 3" effect now only heals 1)
- christmas dagger+'s description now includes the changing effects
- per matt: added new items and gadgets for inventor
- per matt: added new spotlight stage art by mondaybear

12/8/2021 bert
- "if you're seeing this yell at wibi" no longer shows after episodes (we didn't know how episodecomplete actually worked and assumed the mummyepisodewin lines of introductions.csv would never actually play)
- per matt: inventor no longer uses blindinspiration
- per matt: inventor items are usually cheaper
- per matt: robot no longer gets a vampire item

12/8/2021 bert
- thief preliminary. gimmick is now 99% working barring some edge-cases or last minute typos (VERY nearly missed a semicolon right before pushing this). hurrah.

12/7/2021 bert
- fixed dice printer upgrade crashing due to a single-character typo during buster's rebalancing (dice printer was accidentally kept size 1 when it should be size 2, but its upgrade was made reducesize regardless)

12/7/2021 buster
- "mods used in this special" subheader no longer apperas over every mod in the category
- fixed jackeea's name using double quotes instead of \[quote]

12/7/2021 buster of wibi
-added introduction lines for each class without one yet (bert did the robot line)
-removed vanilla introduction lines
-updated credits.txt a little
-further balancing of dice printer and back up drive
-rehauled robot generator a little (the robot-only items that appeared at the start of every array are now all in one array and that array is popped from in numerous places)
-fixed witch_generatorchange using csv-only symbols
-more progress on thief gimmmick
-per matt: updated credits.csv, though it only really shows properly in the post-LL credits sequence

12/7/2021 Titku & bert
-Fixed Creative Crisis crash (item changed to have no slots, but dice weren't destroyed in the process).
-Rewrote Inventor's cutscene a little, and added voice cues.
-Added Hall of Daggers. (It showed up in Inventor's generator, but wasn't actually in the mod.)
-Fixed missing sfx on Flicker.
-Fixed crash when using Waltzer.
-Tagged all of the music!
-bert: rebalanced and tweaked matt's new robot items a bit

12/3/2021-12/7/2021
Various undocumented stuff! Including the addition of Hinata's new credits art, and mondaybear's character select screen art.

12/3/2021 Matt
-Added a ton of new items for robot
-Added items to robots generator
_Added a new script with new random statuses

12/1/2021 Matt
-Added voicelines for Ultra Mariah Carey and Mega Snowman
-added robots generator 
-added Ultra Mariah Carey and Mega Snowman
-added Ultra Mariah Carey and Mega Snowman items
-removed _merge skills.csv (Was messing with robot calculate)
-added robots episode
-added diceydungeons folder in scripts folder
-added more jackpot skills
-merged in witch

11/29/2021 diane
-fixed 2 crashy typos in commandments.hx (backslash after a quote, stray comma)
-(also bert was working on thief overhaul at the time so you'll see a brief snippet of that in thief_dosharing.hx

11/28/2021 bert
-added a "snap your items next turn" commandment
-fixed double quotes in the divine killer, the second chance, and the middle road

11/28/2021 bert
-redid lady luck's character icon (she didn't have a shadow and there were some minor alpha issues)

11/28/2021 bert
-added newer christmas titlescreen with thief, robot, and witch
-rewrote lady luck's episode rules slightly
-per matt: added "dapper snapper" equipment and a lady luck layout associated with it

11/28/2021 bert
-fixed divine zap still using the old "hp" var in its on execute script
-changed "lose a dice" commandment reward to "lock 1 dice" to make it status-relevant
-added "a merry christmas" themecard idea (suggested by matt)

11/28/2021 plok
-(plok internally reworked commandments a fair bit)

11/28/2021 bert of wibi
-jester's glove now works. ctrl+c ctrl+v'd snap.hx from ncrmod, coding skill of the century

11/28/2021 bert of wibi
-themecards can now be upgraded and will return upgraded equipment
-fixed "a blade" not shuffling equipment list
-hand sanitiser no longer crashes the game (added missing mf_healnextturn status)
-removed john denver's voice clips (were not meant to be left in by matt)
-condensed lady luck's "heya warrior" introduction line to 3 lines
-removed unnecessary "on enemy" line of divine storm's description
-fixed "increaced" typo on sponge_upgraded and sponge_weakened
-divine zap now has a second line ("drain 40% of enemy health") instead of a mysterious newline for no reason
-tweaked divine throwing axe's description to avoid textbleed
-fixed missing space after comma in sing's description
-fixed catalog not affecting upgraded cards correctly... not like you could run across this bug in normal gameplay prior to this update
-removed baton pass_upgraded and baton pass_downgraded (equipment whose base version was removed)
-priceless heirloom is now correctly tagged non-negotiable

11/27/2021 bert of wibi
-fixed "a blade" and "a weapon" themecards as warrior failing
-idiotproofed warrior's card selection script a tiny bit so that if a themecard returns null it doesn't error and do nothing

11/27/2021 bert of wibi
-changed "ncrecc" credit to "wibi"
-fixed usage of double quotes on credits

11/27/2021 Matt
-Added new title screen
-Changed credits in game
-added a credit picture at the end of game credits just the title screen for now
-Changed the wheel spin so that jester now has his icon and is now orange text
-made wheel spinning chance 45% instead of 33%
-made it so that when you win the wheel music plays and crowd cheers

11/26/2021 Matt
-Added voicelines to Present
-Changed difficulty for Lady Luck
-Fixed present to not crash anymore
-Changed present back to level 5

11/25/2021 diane of wibi
- introduced "notweapon" tag to mark items that include "attack(" but do not actually damage the opponent (e.g. in a jinx that attacks you) and should not be considered for weapon/blade/pole/etc. themecards. currently only iron helmet is tagged with this
- the judgement variations (except "singers") and the player call for backup cards are now in data/text/equipment.csv to reflect being base-game equipment
- per matt101: renamed "Christmasspecial" png/pck files in data/graphics/overworld/ to "christmasspecial", changed contents of pck file to match
- per matt101: deleted .sfk files in music/combat/
- in commandments.hx, replaced inflicting "losedice" status with decrementing target.bonusdice
- fixed divine ooze- just saying "inflict"
- soul crush now has an on dodge script
- commandments will not activate if the turn ends due to defeating the enemy
- random judgement no longer has an unnecessary 80% zoom tag at the start
- fixed random judgement's capitalization ("Random judgement" -> "Random Judgement")

11/10/2021-11/24/2021 matt101
- Adds snap sounds to the "cheat" skill combination equipment skillcards when you use them
- Fixed generator for lady luck to make it more themed towards her
- Fixes some other bugs as well
- Adds some testing stuff to her generator as well
- Added high intensity music to floor 5 and 6
- Added more itemd to lady luck
- Added more loadouts to her
- added art removed some random effects and added equipment plus loadouts
- Added changes to losedice status now its based on the stack to how much dice you lose if you have 3 losedice you lose 3 dice
- Added new loadouts for lady luck
- Added call for back up thief and robot with the alt and downgraded version
- Fixed divine backstab

11/10/2021 gost of wibi
- added basic thief gimmick
- i don't remember what else

10/23/2021 gost of wibi
- silver sword now only inflicts vampire on the target if they already had the vampire innate. wtf

10/23/2021 gost of wibi
hotfix again aren't we having such fun
- repast rapier and baseball bat no longer crash the game due to their statuses being missing
- added a damage indicator to burst beam (something i'd meant to do), however selfvars are completely broken in the latest build of dicey so i guess we'll see tomorrow if it works visually or not

10/23/2021 Reyder of Wibi, Black Widow of Wibi, gost of wibi
- Lady Luck and Warrior now no longer get Budge or Pip Master.
- Cape Deflect's upgrade is no longer a size reduce.
- Per Matt: fixed Lady Luck generator crashing due to shops still being generated.
- Fixed missing upgrade/downgrade type specifications on Polarized Cauldron, Pulsing Cauldron, and Earsplitter.
- Before Combat/Before Start Turn/On Start Turn scripts are now properly run when rerolling items as Warrior.
- Widow: Tagged Banhammer as excludefromrandomlists due to inconvenience from getting it as Warrior.
- gost: inventor generator implemented (with new items)
- gost: added two new currently unimplemented themecards: "a bat" (nailbatlike) and "a bonus" (passive item)

10/12/2021 Reyder of Wibi
Hotfix, woo!
- Lady Luck now uses a separate generator from Warrior.

10/12/2021 gost of wibi, Reyder of Wibi
- immunetotide items can no longer be rerolled into if you're warrior (their property is that they cannot be rerolled, so you could reroll into them and then not be able to reroll out)
- immunetotide items now resist catalog and cannot be catalog'd into
- a gun now actually works and has more inclusive criteria
- gave warrior a rudimentary generator
- fixed a typo in a tool's description
- added more items fitting a gun's query and a tool's query
- snowcloud now actually does double damage like it says it does
- card reroll now makes the `_thinghappens` sfx
- Added Matt's "Cape Deflect" item.
- Added mondaybear's Lady Luck art (with implementation by Matt).
- Added Matt's Lady Luck cutscene; a bit buggy at the moment.

10/4/2021 Diane and Black Widow of Wibi
- buffed slide (freeze on even instead of on 8, which was very rare)
- commented out traces from thesaurus.hx
- bear equipment is now marked excludefromrandomlists like the rest of the vanilla equipment
- marked spare parts as excludefromrandomlists
- marked some equipment that assumes it stays between turns as excludefromrandomlists
- technology and minigun are now consistent; technology's bonus depends on turn number rather than how many turns it's been in play
- fixed some themecards not being black
- present and the ghosts of christmas equipment preview now works
- fixed some missing reference stuff items
- Added Matt's new Lady Luck equipment.
- Buffed Divine Storm to CD9.

10/3/2021 diane of wibi
- readded tons of vanilla equipment that actually was being used
- warrior now starts with an "a blade" themecard that ensures he'll receive a normal-slot weapon
- warrior's gimmick now uses giveequipment instead of pushing equipment directly to self.equipment
- merged in new lady luck commandments/overworld stuff from matt and plok
- fixed warrior's gimmick not caring about themecards (e.g. A Weapon) after turn 1
- fixed crash due to missing falseswipe status
- fixed some missing sfx
- fixed items not being marked excludefromrandomlists that should
- wrapped the ghosts of christmas' "change form" script in if(!simulation)
- fixed a harmless error that would happen when warrior's "themesequipped" variable was length 0
- rewrote some statuses that decrease by 1 each turn to make it more clear that they do that
- made commandments loaded from a separate commandments.csv file
- fixed a crash that would happen when using bop bop due to https://github.com/TerryCavanagh/diceymodgeons/issues/59 (irony noted)

10/1/2021 diane of wibi
- !!purged all unused vanilla equipment!! with the rest being marked excludefromrandomlists
- rehauled warrior from the ground up
- added "rudy" enemy and his "redshift" status effect
- renamed "antler" item for lightning to "ram"
- updated credits.txt to not mention 2nd episodes
- fixed some jinx syntax to not use "%VAR%x2", instead taking the number that would be %VAR% and manually multiplying it by 2
- removed equipment for now unused jester 2
- added neypah's "endless winter" status and associated equipment (currently unused)

9/22/2021-10/1/2021
...bunch of stuff by plok and matt, who didn't update changelog.md; fill this in later...

9/22/2021 gost of wibi
- added a non-mana witch generator (currently witch 1) and several modded items to go with it. we plan to make a mana witch generator later; if neither episode will be non-mana then the mana generator will likely be built upon the non-mana generator
- minor grammatical changes

9/21/2021 geddy of wibi
- merged in inventor ep 2 and jester ep 2
- and various other shit that was present in the inventor ep 2 build, e.g. new victory.ogg
if i missed anything hollar it out and i'll add it. this is what happens when a lot of builds go by without one simple full changelog and no pull request

9/12/2021 Titku of Wibi
Hotfix. Er, patch. Hotpatch?
- Merged in Matt101's Pip Master redesign.
- Changed Pip Master's script, which didn't make sense with the previous description ("Do 1 damage per pip to dice", which I'm assuming means "Do damage equal to the absolute difference between the old and new dice", but only did 1 damage if the new dice was smaller or equal to the old dice and did damage equal to the difference otherwise?).
- Tidied up Pip Master's description.

9/12/2021 Titku of Wibi
- Added more Angelmoon themes (tradingpost, blacksmith, openchest, lowhealth).
- Merged in Green's Thief episode!
- Rewrote some character descriptions a little.
- Sorted the characters in characters.csv according to their vanilla placement.

9/9/2021 abagail of wibi
- flame whip now has an on dodge script
- added matt101's robot cutscene
- fixed What_s -equipment.csv about.txt's filename
- moved credits.txt out of data\text\
- credited matt101 for the jester1 concept in credits.txt
- deleted Winter Jester Todo.txt which is now contained in the github repo's issues page
- fixed grammar issue in last word that was fixed in last word+ ("survive the fatal blow" instead of "survive next fatal blow")
- fixed frosty bufu and burning agi's description (used `<d6>` instead of `<slotdoubles>` breaking consistency with other needs doubles items)
- finally did it. finally nerfed bloody drill+. now max2 but drains 2 for d6 turns instead of 1
- fixed text bleed on burning agi and frosty bufu
- made present shotgun size 2 (forgot to do this when making it max3 for balance; also makes things not break when it pulls large items)
- fixed crash from invalid downgrade type for confetti popper ("reducerange" should be "decreaserange")

9/9/2021 abagail of wibi
- merged in levelworld's robot puzzle stuff thus far
- frozen gloves (the special robot version and the normal version) now has an on dodge script
- added a placeholderesque rule screen to winter jester
- added bear to characters.csv to probably prevent crashes if you transform into bear somehow
- fixed the introductions.csv placeholder line being all fucky
- added angelmoon's shop theme
- added a credits file

9/8/2021 abagail of wibi
- winter witch and demise actuators no longer use the same selfvar
- winter witch and demise actuators now use .stop() after combat instead of ._repeat = 0
- winter witch and demise selfvars are now properly reset so the actuators won't be serialized
- winter witch now uses default witch generator (could crash because the previous generator contained non-spell equipment because witch used a deck instead of a spellbook)
- minor grammar fix for "never roll x" statuses; "you can't roll x this fight" instead of "you can't roll x on this fight"
the winter witch stuff here is mildly pointless since the episode is going to be tossed pretty soon

9/7/2021 abagail of wibi
- fixed snowcloud saying `2x<d6>` instead of `<double>` which was overlooked forever
- fixed stomp not inflicting shock on initial use
- more grammar fixes on equipment
- added a few items to excludefromrandomlists that didn't make sense to get from card reroll as warrior (or other "get a random item this turn" cards): snowdrift, mortal sin, acceleration kick, bet
- snowdrift is actually always offered for scrap now
- acceleration kick no longer has change_power as upgrade and downgrade (it had no corresponding upgraded/downgraded versions)
- certain passive items now avoid shock: acceleration kick, bet
- certain items with no weakened version now avoid weaken: acceleration kick, bet
- timely demise actuator now actually works
- heater and heater+ should no longer weaken weaken-avoiding/weaken-immune equipment
- "never roll x" statuses were ultra broken and always made you roll 1; this is because the input was effectively e.g. `Rules.playerdicerange([[1, 2, 3, 4, 5, 6]])` - double-heaping of brackets made it interpret the array itself as one of the dice ranges, which somehow it simplified to being 1 instead of throwing an error.
- fixed a separate bug with "never roll x" statuses where it wouldn't actually exclude the roll corresponding to the status (getstatusself was checked in "when inflicted", before the inflicted status actually counted for it)
- tit somehow left the episodes.csv ~lock file in

9/7/2021 6:47 PM: by Titku of Wibi
- Introduced the changelog. A big thank you to Abagail for doing all the GitHub setup.

9/7/2021 6:07 PM: by Titku of Wibi

- Added a missing gadget, Random Hit, from Indeed.
- Fixed some formatting on the Indeed items.
- Banned Curse enemies from Winter Jester due to Curse currently being broken in that episode.
- Added a placeholder introduction line so new classes won't cause a crash.
- Spruced up the shopkeeper and boss dialogue, mainly grammar correction.
- Jester now has a separate generator from Warrior, which does not have Present Shotgun (giveequipment breaks things).
- Nerfed Present Shotgun to MAX3.
- Fixed Persent Shotgun- doing double damage.
- Fixed a bunch of semicolons at the end of each row of episodes.csv.
- Winter Jester has a new limit break, Telescope.

9/4/2021 11:10 PM: by Fiship
No written changelog.

9/3/2021 6:36 PM: by Matt101
- changed witch episode to be a time crunch thing
needs to be fixed since actuators are confusing and i dont know what im doing
crashes after beating an enemy

Beyond: Lost to antiquity. :P Project was started on August 19th, 2021.