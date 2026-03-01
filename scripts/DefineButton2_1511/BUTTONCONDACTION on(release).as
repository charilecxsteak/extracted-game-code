on(release){
   _root.fvar = "fd";
   _root.nmetype = 3;
   _root.vss = 4;
   if(eval("f" + _root.fvar)._currentframe == 2)
   {
      _root.played = true;
   }
   _root.gotoAndPlay(12);
}
