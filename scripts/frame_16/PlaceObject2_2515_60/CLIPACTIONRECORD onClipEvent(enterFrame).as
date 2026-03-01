onClipEvent(enterFrame){
   if(moving > 0)
   {
      _X = _X + 4;
      moving--;
   }
   if(bar._xscale < 1 && _currentframe < 2)
   {
      gotoAndPlay(2);
   }
   if(bar._xscale > bar2._xscale)
   {
      bar2._xscale = bar._xscale;
   }
   if(bar._xscale < bar2._xscale)
   {
      bar2._xscale -= 0.5;
   }
   if(_root.blacker._currentframe > 48 || _root._currentframe == 29)
   {
      removeMovieClip(this);
      unloadMovie(this);
   }
}
