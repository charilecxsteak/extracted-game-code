on(release){
   _root.fvar = "fb";
   _root.nmetype = 5;
   _root.vss = 4;
   if(eval("f" + _root.fvar)._currentframe == 2)
   {
      _root.played = true;
   }
   _root.gotoAndPlay(12);
}
