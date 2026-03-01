onClipEvent(enterFrame){
   if(_root.round > 5)
   {
      _visible = 0;
   }
   else
   {
      _visible = 1;
   }
   if(_root.fb == "Done" || _root.round != _root.unlocked)
   {
      gotoAndStop(2);
   }
   else
   {
      gotoAndStop(1);
   }
}
