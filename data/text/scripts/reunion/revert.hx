//Revert this character back to whatever they were originally. Designed to be used in
//combination with the transform.hx script.
var f = args[0];
var transforminto = args[1];

var isplayer = f.isplayer;

var enemylist = getenemy();

//Show the transformation effect
sfx("_thinghappens");
f.symbolparticle("beartransform");
screenshake(0.2);

function fixinnates(_f){
  var innatematch = false;

  if(_f.innate.length != 0){
    if(_f.template.innate.length > 0){
      if(_f.template.innate.length == _f.innate.length){
        for(i in 0 ... _f.template.innate.length){
          if(_f.template.innate[i] != _f.innate[i]) innatematch = false;
        }
      }
    }else{
      _f.innate = [];
      _f.innateypos = -360;
      innatematch = true;
    }
  }

  //Add the new innates
  if(!innatematch){
    if(_f.template.innate.length > 0){
      for(i in 0 ... _f.template.innate.length){
        _f.addinnate(_f.template.innate[i]);
      }
    }
  }
}

f.resetvar("revert");
f.is_a_transformed_character = false; //This must always be reset or it might break voices

if(isplayer){
  //Revert back to player character. (this basically only works for Thief right now)
  f.name = transforminto;
  
  f.charactertemplate = getcharactertemplate(transforminto);
  f.template = f.charactertemplate.episodes[0].fightertemplate;
  f.reloadanimation();

  //Change voice
  f.voice = f.template.voice;
  f.chatvoice = f.template.chatvoice;
  f.squeak();
  
  Rules.inventor_inspiration = false; 
  Rules.inventor_equipmentrust = 0;

  if(transforminto == "Warrior"){
    //In reunion, this only happens if you use the weird Call for Backup
    //limit break, so we need to "fix" the layout
    f.changelimitbreak("Call for Backup");
    f.reverttoequipmentlayout();

    var skillcard = f.createskillcard("Warrior Reunion", []);
    f.equipment.push(skillcard);

    //Prevent the equipment from flickering in the corner if you win the fight
    for (i in 0 ... f.equipment.length){
      f.equipment[i].x = -5000;
    }

    Rules.manualequipmentfiring = true;
  }else{
    f.changelimitbreak(f.template.limit);

    if(transforminto != "Thief"){
      f.hasstolencard = false;
      if (f.stolencard != null) f.stolencard.dispose();
      f.stolencard = null;
      f.finderskeepers = 0;
    }
  
    animateequipmentintoplace(f);
  }
}else{
  if(enemylist.indexOf(transforminto) != -1){
    //We're transforming back into a standard enemy

    //Change name
    f.name = transforminto;
    f.namelength = -1;
    f.textfield[0].dispose();
    f.textfield[0] = new displayobjects.Print();

    //Change animation
    f.template = getfightertemplate(transforminto);
    f.reloadanimation();
    f.shaketime = 0.5;

    if(f.shadow != null) f.shadow.dispose();

    //Change voice
		f.voice = f.template.voice;
    f.chatvoice = f.template.chatvoice;
    f.squeak();

    //Fix innates
    fixinnates(f);
  }else{
    trace("Enemy cannot *revert* into a player, something very weird has happened");
  }
}
