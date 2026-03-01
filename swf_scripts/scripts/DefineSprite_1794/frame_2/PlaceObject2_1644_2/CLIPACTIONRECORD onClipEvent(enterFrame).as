onClipEvent(enterFrame){
   if(_parent._parent.dead == "true" && _parent._parent.visr == "black")
   {
      gotoAndPlay(9);
   }
   if(_parent._parent.dead == "true" && _parent._parent.visr == "red")
   {
      _parent._parent.visr = "black";
      _root.kills = _root.kills + 1;
      play();
   }
}
