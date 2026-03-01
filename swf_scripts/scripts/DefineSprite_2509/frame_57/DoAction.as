if(_root.gamespeed == 1)
{
   if(Number(_root.nmetype) > 5)
   {
      _root.soundpack.fh.play();
   }
   else
   {
      _root.soundpack.hp.play();
   }
}
else
{
   _root.soundpack.smh.play();
}
