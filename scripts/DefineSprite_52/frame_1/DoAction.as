_root.stop();
PercentLoaded = _root.getBytesLoaded() / _root.getBytesTotal() * 100;
if(PercentLoaded == 100)
{
   _root.gotoAndPlay(2);
}
setProperty(masker, _xscale, PercentLoaded);
_root.loanum = "Loading " add Math.floor(PercentLoaded) add "%";
play();
