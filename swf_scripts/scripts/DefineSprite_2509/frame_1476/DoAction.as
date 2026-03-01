if(_root.gamespeed == 1)
{
   _root.soundpack.smhv.play();
}
if(rangefallon.hitTest(_root.em._x,_root.em._y,false) && _root.em.ihit == "true")
{
   _root.em.health -= 6;
   if(nmetype == "4")
   {
      _root.em.health -= 6;
   }
   tellTarget(_root.em)
   {
      gotoAndPlay(174);
   }
}
_root.headsup = _X;
