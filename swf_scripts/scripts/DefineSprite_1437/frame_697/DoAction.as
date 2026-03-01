if(_root.forecount2 > 0)
{
   tellTarget("_root." add _root.candidate)
   {
      setProperty("_root." add _root.candidate, _X, _X);
      gotoAndPlay(367);
   }
}
else
{
   gotoAndPlay(1);
}
