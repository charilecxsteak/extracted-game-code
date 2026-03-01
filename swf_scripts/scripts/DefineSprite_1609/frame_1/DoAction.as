superbar._xscale += random(3) + 2;
if(superbar._xscale > 100)
{
   superbar._xscale = 100;
   _root.play();
}
superbar._alpha = random(30) + 70;
show = Math.floor(superbar._xscale) add "% complete";
if(_root.nmetype == 1)
{
   enemyname = "the Replicants";
}
if(_root.nmetype == 2)
{
   enemyname = "the Cirrian Guard";
}
if(_root.nmetype == 3)
{
   enemyname = "the Dozermen";
}
if(_root.nmetype == 4)
{
   enemyname = "the Plague";
}
if(_root.nmetype == 5)
{
   enemyname = "Tech Team";
}
if(_root.nmetype == 6)
{
   enemyname = "the Toxic 10";
}
if(_root.nmetype == 7)
{
   enemyname = "the Frozen";
}
if(_root.nmetype == 8)
{
   enemyname = "the Pyromaniacs";
}
if(_root.nmetype == 9)
{
   enemyname = "the Blind";
}
if(_root.nmetype == 10)
{
   enemyname = "Death";
}
weewah = "Electricman versus " add enemyname;
