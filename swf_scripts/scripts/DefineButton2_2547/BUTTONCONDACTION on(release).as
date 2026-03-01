on(release){
   for(var i in _root)
   {
      _root[i].removeMovieClip();
   }
   gotoAndStop("main");
}
