var _count = args[0];
var _modifier = args[1];
var _thisequipment = args[2];
var _self = args[3];
var _name = args[4];
var _reusable;
if (args.length > 5) {
	_reusable = args[5];
} else {
	_reusable = true;
}

var newcount = _count - 1;
var equipname = "";

if(newcount <= 0){
  sfx("countdowntick_1"); 
  equipname = _name;
}else{
  if(newcount == 6) {
    sfx("countdowntick_above3"); 
  }else if(newcount == 1) {
    sfx("countdowntick_2"); 
  }else if(newcount == 2) {
    sfx("countdowntick_3"); 
  }else {
    sfx("countdowntick_above3"); 
  }
  equipname = _name + "@" + newcount;
}

var chargedequipment = new elements.Equipment(equipname, (_modifier == "+"));
if(_modifier == "-"){
	chargedequipment.downgrade();
}

var skillcard = _thisequipment.skillcard;
_internalexchangeequipment(_self, _thisequipment, chargedequipment, -1);
chargedequipment.ready = _reusable;
chargedequipment.show = _reusable;
chargedequipment.skillcard = skillcard;
delay(0.5);