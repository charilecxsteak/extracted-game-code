idle = "no";
hhit = "false";
able = "no";
force = 40 * dir;
if(_root.gamespeed == 1)
{
   if(Number(_root.nmetype) > 5)
   {
      _root.soundpack.fhv.play();
   }
   else
   {
      _root.soundpack.hv.play();
   }
}
else
{
   _root.soundpack.smhv.play();
}
