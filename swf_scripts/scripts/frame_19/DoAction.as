function do_save()
{
   var _loc1_ = _root;
   levelno = Number(0);
   if(fa == "Done")
   {
      levelno++;
   }
   if(fb == "Done")
   {
      levelno += 2;
   }
   if(fc == "Done")
   {
      levelno += 4;
   }
   if(fd == "Done")
   {
      levelno += 8;
   }
   clno = 0;
   if(_loc1_.colour == "Orange")
   {
      clno = 1;
   }
   if(_loc1_.colour == "White")
   {
      clno = 2;
   }
   if(_loc1_.colour == "Blue")
   {
      clno = 3;
   }
   if(_loc1_.colour == "Green")
   {
      clno = 4;
   }
   if(_loc1_.colour == "Turquoise")
   {
      clno = 5;
   }
   skno = 0;
   if(_loc1_.skilllevel == "Pro")
   {
      skno = 1;
   }
   if(_loc1_.skilllevel == "Easy")
   {
      skno = 2;
   }
   levelno2 = chr(levelno + unlocked * 15 + 33);
   if(levelno2 == "0")
   {
      levelno2 = "z";
   }
   roundno = unlocked;
   _loc1_.game_save();
}
stop();
_quality = "HIGH";
trace("ggggg");
gotoAndStop(6);
