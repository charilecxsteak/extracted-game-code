onClipEvent(enterFrame){
   mynumber = "50";
   if(bar._xscale < 1)
   {
      bar._visible = 0;
   }
   if(bar._xscale < 1 && _currentframe == 1)
   {
      play();
      tellTarget(_root.batbem)
      {
         play();
      }
   }
   if(bar._xscale > bar2._xscale)
   {
      bar2._xscale = bar._xscale;
   }
   if(bar._xscale < bar2._xscale)
   {
      bar2._xscale -= 0.5;
   }
}
