stopAllSounds();
_quality = "HIGH";
_root.musadd = 0;
_root.mainmusic.attachSound("menu2");
_root.mainmusic.start(0,99999999999999);
if(_root.nmetype == 1)
{
   enemyname = "the Replicants";
}
if(_root.nmetype == 2)
{
   enemyname = "the Cirrian Guard";
}
if(_root.nmetype == 3)
{
   enemyname = "the Dozermen";
}
if(_root.nmetype == 4)
{
   enemyname = "the Plague";
}
if(_root.nmetype == 5)
{
   enemyname = "Tech Team";
}
if(_root.nmetype == 6)
{
   enemyname = "the Toxic 10";
}
if(_root.nmetype == 7)
{
   enemyname = "the Frozen";
}
if(_root.nmetype == 8)
{
   enemyname = "the Pyromaniacs";
}
if(_root.nmetype == 9)
{
   enemyname = "the Blind";
}
if(_root.nmetype == 10)
{
   enemyname = "Death";
}
timeysho = Math.round(_root.timerr / 18);
if(_root.emhealth > 0 || tel2 == 0)
{
   if(_root.round == _root.unlocked)
   {
      set(fvar,"Done");
   }
   if(_root.fa == "Done" && _root.unlocked == 6)
   {
      fa = "Done";
      fb = "Incomplete";
      fc = "Incomplete";
      fd = "Incomplete";
   }
   if(_root.fa == "Done" && _root.fb == "Done" && _root.unlocked == 5)
   {
      fa = "Incomplete";
      fb = "Incomplete";
      fc = "Incomplete";
      fd = "Incomplete";
      round++;
      unlocked++;
   }
   if(_root.fa == "Done" && _root.fb == "Done" && _root.fc == "Done" && _root.fd == "Done" && _root.unlocked < 5)
   {
      fa = "Incomplete";
      fb = "Incomplete";
      fc = "Incomplete";
      fd = "Incomplete";
      round++;
      unlocked++;
   }
   var score1 = vss * 100 + random(10) * 10;
   trace("score1:" + score1);
   var score2;
   if(skilllevel == "Pro")
   {
      score2 = 1000;
   }
   else if(skilllevel == "Easy")
   {
      score2 = 0;
   }
   else
   {
      score2 = 600;
   }
   trace("score2:" + score2);
   var score3;
   if(timeysho < 60)
   {
      score3 = (60 - timeysho) * 20;
   }
   else if(timeysho < 120)
   {
      score3 = (120 - timeysho) * 10;
   }
   else if(timeysho < 180)
   {
      score3 = (180 - timeysho) * 5;
   }
   else
   {
      score3 = 0;
   }
   trace("score3:" + score3);
   var score4;
   if(_root.emhealth == null)
   {
      _root.emhealth = _root.emhealth22;
      _root.emtotalhealth = 50;
   }
   score4 = _root.emhealth / _root.emtotalhealth * 1000;
   if(isNaN(score4))
   {
      score4 = 200 + random(10) * 10;
   }
   trace("_root.emhealth:" + _root.emhealth + "  " + _root.emhealth22);
   trace("score4:" + score4);
   trace("_root.played:" + _root.played);
   if(_root.played)
   {
      showboxy = "You defeated " add enemyname + "\n \n";
      showboxy += "Enemies: " add vss add "\n";
      showboxy += "Skill level: " add skilllevel add "\n";
      showboxy += "Time taken: " add timeysho add " seconds" add "\n";
      showboxy += "Health Remaining: " add _root.emhealth add " / " add _root.emtotalhealth add "\n";
      s1_txt.text = "";
      s2_txt.text = "";
      s3_txt.text = "";
      s4_txt.text = "";
      s5_txt.text = "";
      s6_txt.text = "";
   }
   else
   {
      var levelScore = score1 + score2 + score3 + score4 + random(10) * 10;
      _root.score += levelScore;
      showboxy = "You defeated " add enemyname + "\n \n";
      showboxy += "Enemies: " add vss add "\n";
      showboxy += "Skill level: " add skilllevel add "\n";
      showboxy += "Time taken: " add timeysho add "\n";
      showboxy += "Health Remaining: " add _root.emhealth add "/" add _root.emtotalhealth add "\n";
      showboxy += "Level Score: \r";
      showboxy += "Total Score: ";
      s1_txt.text = "+" + score1;
      s2_txt.text = "+" + score2;
      s3_txt.text = "+" + score3;
      s4_txt.text = "+" + score4;
      s5_txt.text = "  " + levelScore;
      s6_txt.text = "  " + _root.score;
   }
   trace("score::::::::::" + score);
   submit_mc._visible = false;
   view._visible = false;
   if(username == "")
   {
      showtitle = "CONGRATULATIONS!";
   }
   else
   {
      showtitle = "CONGRATULATIONS " add username.toUpperCase() add "!";
   }
   if(_root.fa == "Done" && _root.nmetype == 10)
   {
      gotoAndPlay(34);
   }
   else
   {
      stop();
   }
}
else
{
   if(username == "")
   {
      showtitle = "YOU LOST THE MATCH";
   }
   else
   {
      showtitle = username.toUpperCase() add " LOST THE MATCH";
   }
   if(_root.score == undefined)
   {
      _root.score = 0;
   }
   s1_txt.text = "";
   s2_txt.text = "";
   s3_txt.text = "";
   s4_txt.text = "";
   s5_txt.text = "";
   s6_txt.text = "";
   trace("_root.played:" + _root.played);
   if(_root.played || _root.oldScore == _root.score)
   {
      submit_mc._visible = false;
      view._visible = false;
   }
   else
   {
      _root.oldScore = _root.score;
      submit_mc._visible = true;
      view._visible = true;
   }
   showboxy = "You were defeated by " add enemyname add "\n" add "\n" add "Enemies: " add vss add "\n" add "Skill level: " add skilllevel add "\n" add "Time taken: " add timeysho add " seconds" add "\n" add "Enemies Remaining: " add _root.tel2 add "\n" add "Total Score: " add _root.score;
   stop();
}
em.removeMovieClip();
em.unloadMovie();
