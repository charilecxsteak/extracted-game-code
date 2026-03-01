_root.game_load();
fa = "Incomplete";
fb = "Incomplete";
fc = "Incomplete";
fd = "Incomplete";
if(levelno2 == "z")
{
   levelno2 = "0";
}
levelnocheck2 = levelno;
if(levelno >= 8)
{
   levelno -= 8;
   fd = "Done";
}
if(levelno >= 4)
{
   levelno -= 4;
   fc = "Done";
}
if(levelno >= 2)
{
   levelno -= 2;
   fb = "Done";
}
if(levelno >= 1)
{
   levelno -= 1;
   fa = "Done";
}
while(Number(roundno) > 7)
{
   roundno -= 7;
}
unlocked = Number(roundno);
levelnocheck = ord(levelno2) - 33 - unlocked * 15;
if(clno == 0)
{
   colour = "Yellow";
}
else if(clno == 1)
{
   colour = "Orange";
}
else if(clno == 2)
{
   colour = "White";
}
else if(clno == 3)
{
   colour = "Blue";
}
else if(clno == 4)
{
   colour = "Green";
}
else if(clno == 5)
{
   colour = "Turquoise";
}
if(skno == 0)
{
   skilllevel = "Normal";
}
else if(skno == 1)
{
   skilllevel = "Pro";
}
else if(skno == 2)
{
   skilllevel = "Easy";
}
round = unlocked;
gotoAndPlay(6);
