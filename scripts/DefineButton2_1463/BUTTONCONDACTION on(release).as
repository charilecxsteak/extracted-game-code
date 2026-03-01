on(release){
   _root.fvar = "fa";
   _root.nmetype = 1;
   _root.vss = 2;
   if(eval("f" + _root.fvar)._currentframe == 2)
   {
      _root.played = true;
   }
   _root.gotoAndPlay(12);
}
