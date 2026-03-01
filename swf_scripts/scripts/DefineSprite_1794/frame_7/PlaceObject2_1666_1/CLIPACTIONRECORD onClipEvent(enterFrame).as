onClipEvent(enterFrame){
   if((_parent._parent._currentframe > 2 && _parent._parent._currentframe < 15 || _parent._parent._currentframe > 403 && _parent._parent._currentframe < 460) && _parent._parent.health < 50)
   {
      _parent._parent.health += _root.gamespeed / 7;
      _parent._parent.fallnum += _root.gamespeed / 7;
      if(_parent._parent.health > 50)
      {
         _parent._parent.health = 50;
         _parent._parent.fallnum = 50;
      }
      if(_currentframe != 2)
      {
         gotoAndPlay(2);
      }
   }
   else if(_parent._parent.dead != "true")
   {
      gotoAndPlay(1);
   }
   if(_parent._parent.dead == "true" && _parent._parent.visr == "black")
   {
      gotoAndPlay(3);
   }
   if(_parent._parent.dead == "true" && _parent._parent.visr == "red")
   {
      _parent._parent.visr = "black";
      _root.kills = _root.kills + 1;
      gotoAndPlay(3);
   }
}
