onClipEvent(enterFrame){
   if(_root.round == _root.unlocked)
   {
      _root.arraford._alpha = 0;
   }
   else
   {
      _root.arraford._alpha = 100;
   }
   if(_root.round == 1)
   {
      _root.arraback._alpha = 0;
   }
   else
   {
      _root.arraback._alpha = 100;
   }
}
