on(release){
   if(_root.dialog._currentframe == 1)
   {
      gotoAndStop(2);
      tellTarget(_root.menu)
      {
         gotoAndStop(1);
      }
   }
}
