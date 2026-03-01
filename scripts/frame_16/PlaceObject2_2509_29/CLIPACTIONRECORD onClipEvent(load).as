onClipEvent(load){
   nmemod = random(3);
   nmemod2 = random(3);
   nmemod3 = random(3);
   nmetype = _root.nmetype;
   visr = "red";
   chag = "yes";
   alert = "true";
   dead = "false";
   health = random(10) + 35;
   if(nmetype == "1")
   {
      health -= 10;
   }
   if(nmetype == "3")
   {
      health += 20;
   }
   if(nmetype == "5")
   {
      health = 50;
   }
   if(nmetype == "7")
   {
      health -= 5;
   }
   if(nmetype == "10")
   {
      if(_name == "m1")
      {
         health += 8;
         kon += 3;
      }
      else
      {
         kon -= 1;
         health -= 15;
      }
   }
   kon = 5;
   if(nmetype == "3" || nmetype == "4")
   {
      kon += 2;
   }
   if(_name == "m1")
   {
      health += 10;
      kon++;
   }
   fallnum = health;
   totalhealth = health;
   setProperty("_root.bm" add mynumber, _yscale, Number(totalhealth) * 2.5);
   running = "no";
   command = 0;
   xflying = "no";
   charnum = Number(random(100));
}
