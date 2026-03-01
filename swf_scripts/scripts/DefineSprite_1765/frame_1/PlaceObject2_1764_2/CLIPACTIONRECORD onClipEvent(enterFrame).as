onClipEvent(enterFrame){
   if(_root.gamespeed == 1)
   {
      if(Number(_currentframe) > 21)
      {
         frame = (Number(_currentframe) - 18) / 4;
         gotoAndPlay(frame);
      }
   }
   if(_root.gamespeed == 0.25)
   {
      if(Number(_currentframe) < 21)
      {
         frame = Number(_currentframe) * 4 + 18;
         gotoAndPlay(frame);
      }
   }
}
