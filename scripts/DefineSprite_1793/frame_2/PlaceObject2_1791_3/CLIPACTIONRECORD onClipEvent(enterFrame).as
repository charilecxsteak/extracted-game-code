onClipEvent(enterFrame){
   if(_root.gamespeed == 1 && _currentframe > 8)
   {
      gotoAndPlay((_currentframe - 5) / 4);
   }
   if(_root.gamespeed == 0.25 && _currentframe < 8)
   {
      gotoAndPlay(_currentframe * 4 + 5);
   }
}
