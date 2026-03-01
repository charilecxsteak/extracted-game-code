onClipEvent(load){
   _root.timerr = 0;
   chargerate = 0.007;
   charge = 3;
   _root.headsup = -900;
   dir = 1;
   dead = "false";
   totalhealth = 50;
   _root.bem._yscale = totalhealth * 2.5;
   health = totalhealth;
   fallnum = health;
}
