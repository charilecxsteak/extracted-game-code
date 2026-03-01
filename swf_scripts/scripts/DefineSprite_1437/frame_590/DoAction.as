if(_root.forecount2 > 0)
{
   charge--;
   tellTarget("_root." add _root.candidate)
   {
      setProperty("_root." add _root.candidate, _X, _root.em._x);
      gotoAndPlay(230);
   }
}
else
{
   gotoAndPlay(1);
}
