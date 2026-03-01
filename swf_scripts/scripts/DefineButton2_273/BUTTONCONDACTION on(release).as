on(release){
   if(username == "" || username == " " || username == "  " || username == "   " || username == "    " || username == "     " || username == "      " || username == "       " || username == "        ")
   {
      dialog.gotoAndStop(2);
   }
   else if(_root.dialog._currentframe == 1)
   {
      _root.score = 0;
      round = 1;
      unlocked = 1;
      beaten = 0;
      fa = "Incomplete";
      fb = "Incomplete";
      fc = "Incomplete";
      fd = "Incomplete";
      if(username == "FINISHED")
      {
         round = 1;
         unlocked = 6;
         beaten = 19;
         fa = "Done";
         fb = "Incomplete";
         fc = "Incomplete";
         fd = "Incomplete";
      }
      _root.mainmusic.stop();
      _root.mainmusic.attachSound("sa");
      _root.musadd = 0;
      _root.mainmusic.start(0,99999999999999);
      gotoAndPlay(25);
   }
}
