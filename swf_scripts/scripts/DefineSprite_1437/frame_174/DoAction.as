_root.gamespeed = 1;
automove = "no";
able = "no";
idle = "no";
hhit = "false";
ihit = "false";
force = -28 * dir;
if(Number(health) < 1)
{
   _root.gamespeed = 0.25;
   gotoAndPlay(602);
}
