if(_parent.nmetype == 1)
{
   if(_parent._name == "m1")
   {
      stop();
   }
   else
   {
      gotoAndPlay(2);
   }
}
if(_parent.nmetype == 2)
{
   gotoAndPlay(3);
}
if(_parent.nmetype == 3)
{
   gotoAndPlay(4);
}
if(_parent.nmetype == 4)
{
   gotoAndPlay(5 + _parent.nmemod3);
}
if(_parent.nmetype == 5)
{
   gotoAndPlay(8);
}
if(_parent.nmetype == 6)
{
   gotoAndPlay(9);
}
if(_parent.nmetype == 7)
{
   gotoAndPlay(10);
}
if(_parent.nmetype == 8)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(12);
   }
   else
   {
      gotoAndPlay(11);
   }
}
if(_parent.nmetype == 9)
{
   gotoAndPlay(2);
}
if(_parent.nmetype == 10)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(13);
   }
   else
   {
      gotoAndPlay(2);
   }
}
stop();
