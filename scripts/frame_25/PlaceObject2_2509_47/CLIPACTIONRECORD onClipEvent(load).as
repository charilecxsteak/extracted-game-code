onClipEvent(load){
   nmemod = random(3);
   nmemod2 = random(3);
   nmemod3 = random(3);
   nmetype = _root.nmetype;
   visr = "red";
   chag = "yes";
   alert = "true";
   dead = "false";
   health = 25;
   kon = 5;
   fallnum = health;
   totalhealth = health;
   setProperty("_root.bm" add mynumber, _yscale, Number(totalhealth) * 2.5);
   running = "no";
   command = 0;
   xflying = "no";
   charnum = Number(random(100));
}
