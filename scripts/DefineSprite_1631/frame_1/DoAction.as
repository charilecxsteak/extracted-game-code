if(_parent.nmetype == 1)
{
   stop();
}
if(_parent.nmetype == 2)
{
   gotoAndPlay(2);
}
if(_parent.nmetype == 3)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(11);
   }
   else
   {
      gotoAndPlay(3);
   }
}
if(_parent.nmetype == 4)
{
   gotoAndPlay(4 + Number(_parent.nmemod2));
}
if(_parent.nmetype == 5)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(12);
   }
   else
   {
      gotoAndPlay(7);
   }
}
if(_parent.nmetype == 6)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(13);
   }
   else
   {
      gotoAndPlay(8);
   }
}
if(_parent.nmetype == 7)
{
   gotoAndPlay(9);
}
if(_parent.nmetype == 9)
{
   gotoAndPlay(15);
}
if(_parent.nmetype == 8)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(14);
   }
   else
   {
      gotoAndPlay(10);
   }
}
if(_parent.nmetype == 10)
{
   if(_parent._name == "m1")
   {
      gotoAndPlay(17);
   }
   else
   {
      gotoAndPlay(16);
   }
}
