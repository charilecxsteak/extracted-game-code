if(range.hitTest(_root.em._x,_root.em._y,false) && _root.em.hhit == "true")
{
   _root.em.health -= 4;
   if(nmetype == "9")
   {
      _root.em.health -= 2;
   }
   if(nmetype == "3" || nmetype == "10" && _name == "m1")
   {
      _root.em.health -= 3;
   }
   if(dir * _root.em.dir == -1)
   {
      tellTarget(_root.em)
      {
         gotoAndPlay(532);
      }
   }
   else
   {
      tellTarget(_root.em)
      {
         gotoAndPlay(169);
      }
   }
}
