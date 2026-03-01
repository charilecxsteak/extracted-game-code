onClipEvent(enterFrame){
   if(chag == "yes" && (dead == "false" && (_currentframe != 75 || _currentframe != 103)))
   {
      if(_root.gamespeed == 1)
      {
         if(Number(_currentframe) > 400)
         {
            frame = (Number(_currentframe) - 400) / 4;
            gotoAndPlay(frame);
         }
      }
      if(_root.gamespeed == 0.25)
      {
         if(Number(_currentframe) < 400)
         {
            frame = Number(_currentframe) * 4 + 400;
            gotoAndPlay(frame);
         }
      }
   }
   if(this.getDepth() > _root.em.getDepth())
   {
      this.swapDepths(_root.em);
   }
   if(xflying == "yes")
   {
      _X = _X + dir * 60;
      _root.headsup = _X;
      if(_X < 0)
      {
         _X = 1;
         gotoAndPlay(184);
      }
      if(_X > 640)
      {
         _X = 639;
         gotoAndPlay(184);
      }
   }
   if(xflying == "yesup" || xflying == "yesupnohit" || xflying == "yesupnohitfast")
   {
      _X = _X + dir * 50 * Number(_root.gamespeed);
      if(xflying == "yesupnohitfast")
      {
         _X = _X - dir * 150 * Number(_root.gamespeed);
      }
      if(xflying == "yesup")
      {
         _root.headsup = _X;
      }
      if(_X < 0)
      {
         chag = "yes";
         _X = 1;
         gotoAndPlay(220);
      }
      if(_X > 640)
      {
         chag = "yes";
         _X = 639;
         gotoAndPlay(220);
      }
   }
   if(_root.gamespeed == 1)
   {
      _X = _X + force;
      force *= 0.8;
   }
   else
   {
      _X = _X + force / 4;
      force *= 0.95;
   }
   if(dead == "false")
   {
      if(command == 0)
      {
         speed = random(4) + 8;
         if(nmetype == "2" || nmetype == "4" || nmetype == "7" || nmetype == "9" || nmetype == "10" && _name != "m1")
         {
            speed += 3;
         }
         if(nmetype == "8")
         {
            speed += 6;
         }
         if(nmetype == "3" || nmetype == "10" && _name == "m1")
         {
            speed -= 2;
         }
         command = random(5) + 1;
      }
      if(command == 1 && idle == "yes")
      {
         if(range.hitTest(_root.em._x,_root.em._y,false))
         {
            rand = random(3);
            if(rand == 0)
            {
               gotoAndPlay(36);
            }
            else if(rand == 1)
            {
               gotoAndPlay(47);
            }
            else
            {
               gotoAndPlay(26);
            }
         }
         else
         {
            _X = _X - speed * dir * _root.gamespeed;
            if(running == "no")
            {
               running = "yes";
               gotoAndPlay(15);
            }
         }
      }
      if(command == 2 && idle == "yes")
      {
         if(range.hitTest(_root.em._x,_root.em._y,false))
         {
            rand = random(3);
            if(rand == 0)
            {
               gotoAndPlay(36);
            }
            else if(rand == 1)
            {
               gotoAndPlay(47);
            }
            else
            {
               gotoAndPlay(26);
            }
         }
         else
         {
            _X = _X + speed * dir * _root.gamespeed;
            if(running == "no")
            {
               running = "yes";
               gotoAndPlay(116 + random(10));
            }
            if(_X < 50 || _X > 590)
            {
               command = 4;
               running = "no";
            }
         }
      }
      if(command == 3 && idle == "yes")
      {
         if(range.hitTest(_root.em._x,_root.em._y,false))
         {
            command = 2;
            rand = random(3);
            if(rand == 0)
            {
               gotoAndPlay(36);
            }
            else if(rand == 1)
            {
               gotoAndPlay(47);
            }
            else
            {
               gotoAndPlay(26);
            }
         }
         else
         {
            _X = _X + speed * dir * _root.gamespeed;
            if(running == "no")
            {
               running = "yes";
               gotoAndPlay(127);
            }
            if(_root.em._x + 200 < _X || _root.em._x - 200 > _X)
            {
               command = 4;
               running = "no";
            }
         }
      }
      if(command == 4 && idle == "yes")
      {
         speed = random(4) + 8;
         if(nmetype == "2" || nmetype == "7")
         {
            speed += 3;
         }
         if(nmetype == "8")
         {
            speed += 6;
         }
         if(nmetype == "3")
         {
            speed -= 2;
         }
         if(range.hitTest(_root.em._x,_root.em._y,false) && _root.em.able == "yes")
         {
            command = 1;
            rand = random(3);
            if(rand == 0)
            {
               gotoAndPlay(36);
            }
            else if(rand == 1)
            {
               gotoAndPlay(47);
            }
            else
            {
               gotoAndPlay(26);
            }
         }
         else if(standby == "no")
         {
            standby = "yes";
            gotoAndPlay(1);
         }
      }
      if(command == 5 && idle == "yes")
      {
         speed = 13;
         if(range.hitTest(_root.em._x,_root.em._y,false))
         {
            rand = random(3);
            if(rand == 0)
            {
               gotoAndPlay(36);
            }
            else if(rand == 1)
            {
               gotoAndPlay(47);
            }
            else
            {
               gotoAndPlay(26);
            }
         }
         else
         {
            _X = _X - speed * dir * _root.gamespeed;
            if(running == "no")
            {
               running = "yes";
               gotoAndPlay(138);
            }
         }
      }
      if(range.hitTest(_root.em._x,_root.em._y,false) && _root.em.able == "no")
      {
         command = 4;
      }
      if(random(3) == 0 && _root.nmetype == 4 || random(3) == 0 && _root.nmetype == 5 || random(4) == 0 && _root.nmetype == 8 || random(3) != 0 && _root.nmetype == 9 || random(3) != 0 && _root.nmetype == 10 && _name == "m1")
      {
         if(_root.em.warner.hitTest(_X,_Y,false) && hhit == "true" && able == "yes" && _root.teh2 == 1)
         {
            if(_root.nmetype == 9 && random(4) == 0 || _root.nmetype == 10 && random(4) == 0)
            {
               gotoAndPlay(311);
            }
            else if(random(2) == 0)
            {
               gotoAndPlay(285);
            }
            else
            {
               gotoAndPlay(272);
            }
         }
         if(_root.em.warnerlow.hitTest(_X,_Y,false) && hhit == "true" && able == "yes")
         {
            if(random(3) == 0 && _root.nmetype == 9 || random(3) == 0 && _root.nmetype == 10 && _name == "m1")
            {
               gotoAndPlay(311);
            }
            else
            {
               gotoAndPlay(297);
            }
         }
      }
      if(random(3) == 0 && _root.nmetype == 4 || random(3) == 0 && _root.nmetype == 5 || random(4) == 0 && _root.nmetype == 8 || random(3) != 0 && _root.nmetype == 9 || random(3) != 0 && _root.nmetype == 10 && _name == "m1")
      {
         if(_root.em.warner.hitTest(_X,_Y,false) && hhit == "true" && able == "yes")
         {
            if(_root.nmetype == 9 && random(4) == 0 || _root.nmetype == 10 && random(3) == 0)
            {
               gotoAndPlay(311);
            }
            else if(random(2) == 0)
            {
               gotoAndPlay(285);
            }
            else
            {
               gotoAndPlay(272);
            }
         }
         if(_root.em.warnerlow.hitTest(_X,_Y,false) && hhit == "true" && able == "yes")
         {
            if(random(2) == 0 && _root.nmetype == 9 || random(3) == 0 && _root.nmetype == 10 && _name == "m1")
            {
               gotoAndPlay(311);
            }
            else
            {
               gotoAndPlay(297);
            }
         }
      }
      if((_root.em._x < _root.headsup && _root.headsup < _X || _root.em._x > _root.headsup && _root.headsup > _X) && idle == "yes" && (_root.headsup < 640 && _root.headsup > 0))
      {
         if(_root.nmetype == 5 && !((_currentframe > 2 && _currentframe < 15 || _currentframe > 403 && _currentframe < 460) && health < 50) && random(2) == 0)
         {
            if(random(2) == 0)
            {
               gotoAndPlay(272);
            }
            else
            {
               gotoAndPlay(285);
            }
         }
         if(random(5) == 0 && _root.nmetype == 3 || random(4) == 0 && _root.nmetype == 4 || random(7) == 0 && _root.nmetype == 1 || random(3) == 0 && _root.nmetype == 2 || random(7) == 0 && _root.nmetype == 6 || random(3) == 0 && _root.nmetype == 7 || random(2) == 0 && _root.nmetype == 8 || _root.nmetype == 9 || _root.nmetype == 10 && _name == "m1")
         {
            if(random(2) == 0)
            {
               gotoAndPlay(272);
            }
            else
            {
               gotoAndPlay(285);
            }
         }
      }
      if(act != "stand")
      {
         standby = "no";
      }
      if(act != "run")
      {
         running = "no";
      }
      if(alert == "true" && able == "yes")
      {
         dir = -1;
         if(_X > _root.em._x)
         {
            dir = 1;
         }
      }
      _xscale = dir * 100;
      if(dead == "false")
      {
         if(range.hitTest(_root.headsup,_Y,false) && hhit == "true" || range.hitTest(_root.headsup - 10,_Y,false) && hhit == "true")
         {
            health -= 1;
            idle = "no";
            fallnum = health;
            if(random(2) == 0)
            {
               gotoAndPlay(67);
            }
            else
            {
               gotoAndPlay(97);
            }
         }
         if(_root.em.headhit.hitTest(_X,_Y,false) && hhit == "true")
         {
            health -= _root.em.damage;
            idle = "no";
            if(health + kon < fallnum || health < 1)
            {
               fallnum = health;
               gotoAndPlay(67);
            }
            else
            {
               gotoAndPlay(57);
            }
         }
         if(_root.em.headhitforce.hitTest(_X,_Y,false) && hhit == "true")
         {
            force = 12 * dir;
            if(_root.gamespeed == 0.25)
            {
               force = 20 * dir;
            }
            health -= _root.em.damage;
            idle = "no";
            if(health + kon < fallnum || health < 1)
            {
               fallnum = health;
               gotoAndPlay(67);
            }
            else
            {
               gotoAndPlay(57);
            }
         }
         if(_root.em.knocker.hitTest(_X,_Y,false) && hhit == "true")
         {
            health -= _root.em.damage;
            idle = "no";
            fallnum = health;
            if(random(2) == 0)
            {
               gotoAndPlay(67);
            }
            else
            {
               gotoAndPlay(97);
            }
         }
         if(_root.em.tripper.hitTest(_X,_Y,false) && hhit == "true")
         {
            health -= _root.em.damage;
            idle = "no";
            fallnum = health;
            if(random(2) == 0)
            {
               gotoAndPlay(67);
            }
            else
            {
               gotoAndPlay(97);
            }
         }
         if(_root.em.gutshitforce.hitTest(_X,_Y,false) && hhit == "true")
         {
            force = 12 * dir;
            if(_root.gamespeed == 0.25)
            {
               force = 24 * dir;
            }
            health -= _root.em.damage;
            idle = "no";
            if(health + kon < fallnum || health < 1)
            {
               fallnum = health;
               gotoAndPlay(97);
            }
            else
            {
               gotoAndPlay(62);
            }
         }
         if(_root.em.gutshit.hitTest(_X,_Y,false) && hhit == "true")
         {
            health -= _root.em.damage;
            idle = "no";
            if(health + kon < fallnum || health < 1)
            {
               fallnum = health;
               gotoAndPlay(97);
            }
            else
            {
               gotoAndPlay(62);
            }
         }
      }
   }
   if(_X > 640)
   {
      force *= -1;
      _X = 639;
   }
   if(_X < 0)
   {
      force *= -1;
      _X = 1;
   }
   if(_root.em.fore.hitTest(_X,_Y,false) && able == "yes")
   {
      _root.forecount += 1;
      _root.candidate = _name;
   }
   if(_root.em.hind.hitTest(_X,_Y,false) && able == "yes")
   {
      _root.hindcount += 1;
   }
   if(_name == "m")
   {
      _Y = "1400";
      _X = "1400";
      gotoAndStop(2);
   }
   else if(health > 0)
   {
      _root.teh += Number(health);
      _root.tel = _root.tel + 1;
   }
   setProperty("_root.bm" add mynumber add ".bar", _xscale, Number(health) / Number(totalhealth) * 54);
   if(health < 0)
   {
      setProperty("_root.bm" add mynumber add ".bar", _xscale, 0);
   }
   if((_currentframe == 75 || _currentframe == 103) && health > 0)
   {
      play();
   }
   if(_root.blacker._currentframe > 48)
   {
      removeMovieClip(this);
      unloadMovie(this);
   }
   if(health < 1)
   {
      _root.play();
      removeMovieClip(this);
   }
}
