onClipEvent(enterFrame){
   if(_root.round > 4)
   {
      _visible = 0;
   }
   else
   {
      _visible = 1;
   }
   if(_root.round != _root.unlocked || _root.fa == "Done")
   {
      trace(1111);
      gotoAndStop(2);
   }
   else
   {
      trace(2222);
      gotoAndStop(1);
   }
}
