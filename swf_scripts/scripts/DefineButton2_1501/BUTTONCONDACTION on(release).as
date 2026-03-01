on(release){
   _root.fvar = "fd";
   _root.nmetype = 4;
   _root.vss = 3;
   if(eval("f" + _root.fvar)._currentframe == 2)
   {
      _root.played = true;
   }
   _root.gotoAndPlay(12);
}
