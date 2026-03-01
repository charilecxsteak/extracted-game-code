onClipEvent(enterFrame){
   if(_parent._parent.dead == "false")
   {
      _rotation = _rotation + _root.gamespeed * _parent._parent.health * 0.35;
   }
}
