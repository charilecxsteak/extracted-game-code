on(release){
   if(_root.dialog._currentframe == 1)
   {
      gotoAndStop(2);
      tellTarget(_root.menu2)
      {
         gotoAndStop(1);
      }
   }
}
