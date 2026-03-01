if(Number(health) < 1)
{
   _root.winner = "false";
   _root.blacker.play();
   dead = "true";
   gotoAndPlay(637);
}
