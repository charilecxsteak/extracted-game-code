if(_parent.nmetype == 1)
{
   stop();
}
if(_parent.nmetype == 2)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(12);
   }
   else
   {
      gotoAndPlay(2);
   }
}
if(_parent.nmetype == 3)
{
   gotoAndPlay(3);
}
if(_parent.nmetype == 4)
{
   gotoAndPlay(4 + _parent.nmemod);
}
if(_parent.nmetype == 5)
{
   gotoAndPlay(7);
}
if(_parent.nmetype == 6)
{
   gotoAndPlay(8);
}
if(_parent.nmetype == 7)
{
   gotoAndPlay(9);
}
if(_parent.nmetype == 8)
{
   gotoAndPlay(10);
}
if(_parent.nmetype == 9)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(13);
   }
   else
   {
      gotoAndPlay(11);
   }
}
if(_parent.nmetype == 10)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(15);
   }
   else
   {
      gotoAndPlay(14);
   }
}
