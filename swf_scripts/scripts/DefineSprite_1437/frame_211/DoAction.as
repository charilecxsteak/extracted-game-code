if(_root.forecount2 > 0)
{
   charge--;
   tellTarget("_root." add _root.candidate)
   {
      setProperty("_root." add _root.candidate, _X, _X);
      gotoAndPlay(145);
   }
}
else
{
   gotoAndPlay(1);
}
