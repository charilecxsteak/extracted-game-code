stop();
if(_root.skilllevel == "Pro")
{
   vss++;
}
if(_root.skilllevel == "Easy")
{
   vss--;
}
if(vss > 25)
{
   vss = 25;
}
trace("levelno:" + levelno + "   " + roundno + "   " + round + "  " + unlocked);
trace("_root.played:" + _root.played);
