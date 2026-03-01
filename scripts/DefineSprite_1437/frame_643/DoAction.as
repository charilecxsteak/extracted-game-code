if(_root.forecount2 > 0)
{
   charge -= 2;
   tellTarget("_root." add _root.candidate)
   {
      setProperty("_root." add _root.candidate, _X, _root.em._x);
      gotoAndPlay(325);
   }
}
else
{
   gotoAndPlay(1);
}
