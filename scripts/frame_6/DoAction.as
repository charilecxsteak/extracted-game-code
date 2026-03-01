stop();
_quality = "HIGH";
if(unlocked < 5)
{
   beaten = unlocked * 4 - 4;
}
else if(unlocked == 5)
{
   beaten = 16;
}
else if(unlocked == 6)
{
   beaten = 18;
}
if(fa == "Done")
{
   beaten++;
}
if(fb == "Done")
{
   beaten++;
}
if(fc == "Done")
{
   beaten++;
}
if(fd == "Done")
{
   beaten++;
}
if(unlocked == 6 && fa == "Done")
{
   beaten = "All";
}
staties = _root.username add " - " add beaten add " Matches Completed on " add skilllevel;
_root.played = false;
trace("_root.played:" + _root.played);
