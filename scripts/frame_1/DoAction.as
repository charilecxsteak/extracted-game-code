function game_save()
{
   var _loc1_ = _root;
   save_date.data.username = _loc1_.username;
   save_date.data.levelno = _loc1_.levelno;
   save_date.data.roundno = _loc1_.roundno;
   save_date.data.skno = _loc1_.skno;
   save_date.data.clno = _loc1_.clno;
   save_date.data.score = _loc1_.score;
   save_date.flush();
}
function game_load()
{
   var _loc1_ = _root;
   _loc1_.username = save_date.data.username;
   _loc1_.levelno = save_date.data.levelno;
   _loc1_.roundno = save_date.data.roundno;
   _loc1_.skno = save_date.data.skno;
   _loc1_.clno = save_date.data.clno;
   _loc1_.score = save_date.data.score;
}
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
function game_setQuality(num)
{
   var _loc1_ = num;
   game_quality = _loc1_;
   menu_quality.mc_1.gotoAndStop(1);
   menu_quality.mc_2.gotoAndStop(1);
   menu_quality.mc_3.gotoAndStop(1);
   menu_quality.mc_4.gotoAndStop(1);
   menu_quality["mc_" + game_quality].gotoAndStop(2);
   if(_loc1_ == 1)
   {
      _quality = "LOW";
   }
   else if(_loc1_ == 2)
   {
      _quality = "MEDIUM";
   }
   else if(_loc1_ == 4)
   {
      _quality = "BEST";
   }
   else
   {
      _quality = "HIGH";
   }
   fight_quality = _quality;
   menu_quality._parent.gotoAndStop(1);
}
function game_getQuality(obj)
{
   var _loc1_ = obj;
   if(_quality == "LOW")
   {
      game_quality = 1;
   }
   else if(_quality == "MEDIUM")
   {
      game_quality = 2;
   }
   else if(_quality == "BEST")
   {
      game_quality = 4;
   }
   else
   {
      game_quality = 3;
   }
   _loc1_.mc1.gotoAndStop(1);
   _loc1_.mc2.gotoAndStop(1);
   _loc1_.mc3.gotoAndStop(1);
   _loc1_.mc4.gotoAndStop(1);
   _loc1_["mc_" + game_quality].gotoAndStop(2);
   menu_quality = _loc1_;
}
stop();
mine = new Sound();
bigvol = 60;
mine.setVolume(bigvol);
Stage.showMenu = false;
_root.emhealth = 50;
_root.emtotalhealth = 50;
_root.score = 0;
_root.played = false;
save_date = SharedObject.getLocal("em");
var §game_quality:Number§;
var §menu_quality:MovieClip§;
