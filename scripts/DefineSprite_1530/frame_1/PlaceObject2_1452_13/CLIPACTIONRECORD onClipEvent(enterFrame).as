onClipEvent(enterFrame){
   if(_root.round > 4)
   {
      _visible = 0;
   }
   else
   {
      _visible = 1;
   }
   if(_root.round != _root.unlocked || _root.fb == "Done")
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
