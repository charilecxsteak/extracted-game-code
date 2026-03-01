if(range.hitTest(_root.em._x,_root.em._y,false) && _root.em.hhit == "true")
{
   _root.em.health -= 2;
   if(nmetype == "4" || nmetype == "7" || nmetype == "8" || nmetype == "10" && _name == "m1")
   {
      _root.em.health -= 1;
   }
   if(dir * _root.em.dir == -1)
   {
      tellTarget(_root.em)
      {
         gotoAndPlay(525);
      }
   }
   else
   {
      tellTarget(_root.em)
      {
         gotoAndPlay(164);
      }
   }
}
