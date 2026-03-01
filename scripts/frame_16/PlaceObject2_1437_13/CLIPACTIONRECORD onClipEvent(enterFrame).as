onClipEvent(enterFrame){
   if(_root._currentframe != 17)
   {
      _root.teh = 99;
   }
   _root.teh2 = _root.teh;
   _root.teh = 0;
   if(_root.teh2 < 1 && _root.timerr > 10)
   {
      _root.winner = "true";
      if(idle == "yes" && able == "yes" && _root.nmetype == 10)
      {
         _root.whiter.gotoAndPlay(2);
         gotoAndPlay(706);
      }
      else if(_root.whiter._currentframe < 2)
      {
         _root.blacker.play();
      }
   }
   else
   {
      if(_root._currentframe == 17)
      {
         _root.timerr = _root.timerr + 1;
      }
      _root.emtotalhealth = totalhealth;
      _root.emhealth = health;
   }
   if(dead == "false")
   {
      _root.tel2 = _root.tel;
      _root.tel = 0;
      if(this.getDepth() > _root.blacker.getDepth())
      {
         this.swapDepths(_root.blacker);
      }
      if(this.getDepth() > _root.blacker.getDepth())
      {
         this.swapDepths(_root.whiter);
      }
      if(_root.blacker.getDepth() > _root.bounder.getDepth())
      {
         _root.blacker.swapDepths(_root.bounder);
      }
      if(_root.blacker.getDepth() > _root.bounder.getDepth())
      {
         _root.whiter.swapDepths(_root.bounder);
      }
      _X = _X + force;
      force *= 0.8;
      if(automove == "manual")
      {
         if(Key.isDown(39))
         {
            _X = _X + 12;
         }
         if(Key.isDown(37))
         {
            _X = _X - 12;
         }
      }
      goslomo = "no";
      travelling = "no";
      if(Key.isDown(37) || Key.isDown(39))
      {
         travelling = "yes";
      }
      if(automove == "yes")
      {
         _X = _X + 10 * _root.gamespeed * dir;
      }
      if(idle == "yes" && able == "yes")
      {
         if(Key.isDown(40))
         {
            gotoAndPlay(115);
         }
         if(Key.isDown(81) && charge >= 1)
         {
            gotoAndPlay(443);
         }
         if(Key.isDown(65) || Key.isDown(81) && charge < 1)
         {
            if(_root.hindcount > 0 && _root.forecount > 0)
            {
               gotoAndPlay(572);
            }
            else
            {
               if(_root.hindcount > 0 && _root.forecount == 0)
               {
                  dir *= -1;
               }
               gotoAndPlay(16);
            }
         }
         if(Key.isDown(87) && charge >= 1)
         {
            if(travelling == "yes")
            {
               gotoAndPlay(385);
            }
            else
            {
               gotoAndPlay(492);
            }
         }
         if(Key.isDown(83) || Key.isDown(87) && charge < 1)
         {
            if(travelling == "yes")
            {
               if(_root.forecount < 2)
               {
                  gotoAndPlay(558);
               }
               else
               {
                  automove = "yes";
                  gotoAndPlay(546);
               }
            }
            else if(_root.hindcount > 1)
            {
               gotoAndPlay(141);
            }
            else if(_root.forecount > 2)
            {
               gotoAndPlay(546);
            }
            else if(_root.hindcount > 0)
            {
               gotoAndPlay(141);
            }
            else
            {
               gotoAndPlay(35);
            }
         }
         runner2._visible = "0";
         runner._visible = "1";
         if(Key.isDown(69))
         {
            if(travelling == "yes")
            {
               if(_root.forecount > 0 && charge >= 2)
               {
                  gotoAndPlay(642);
               }
               if(charge >= 1 && _root.forecount > 0 && charge < 2)
               {
                  gotoAndPlay(207);
               }
               if(_root.forecount > 0 && charge < 1)
               {
                  gotoAndPlay(693);
               }
               runner2._visible = "1";
               runner._visible = "0";
            }
            else
            {
               if(_root.forecount > 0 && charge >= 1)
               {
                  gotoAndPlay(207);
               }
               if(_root.forecount > 0 && charge < 1)
               {
                  gotoAndPlay(693);
               }
            }
         }
         if(Key.isDown(68) || Key.isDown(69) && charge < 1)
         {
            if(travelling == "yes")
            {
               if(_root.forecount > 0 && charge >= 1)
               {
                  gotoAndPlay(589);
               }
               runner2._visible = "1";
               runner._visible = "0";
            }
            else if(_root.forecount > 0)
            {
               gotoAndPlay(693);
            }
         }
         if(idle == "yes")
         {
            if(Key.isDown(37))
            {
               dir = -1;
            }
            if(Key.isDown(39))
            {
               dir = 1;
            }
            _xscale = Math.sqrt(_xscale * _xscale) * dir;
            if(Key.isDown(37) || Key.isDown(39))
            {
               _X = _X + 10 * dir;
               if(_currentframe < 16)
               {
                  idle = "yes";
                  gotoAndPlay(200);
               }
            }
            else if(_currentframe < 207 && _currentframe > 199)
            {
               gotoAndPlay(1);
            }
         }
      }
   }
   if(health < 1 && dead == "false")
   {
      dead = "true";
      gotoAndPlay(174);
   }
   if(_X > 640)
   {
      _X = 639;
      force *= -1;
   }
   if(_X < 0)
   {
      force *= -1;
      _X = 1;
   }
   _root.forecount2 = "0";
   _root.forecount2 = _root.forecount;
   _root.hindcount = "0";
   _root.forecount = "0";
   _root.bem.bar._xscale = health / totalhealth * 54;
   _root.emhealth = health;
   _root.emhealth22 = health;
   charge += chargerate * _root.gamespeed;
   if(_currentframe < 15)
   {
      charge += chargerate;
   }
   if(charge < 0)
   {
      charge = 0;
   }
   if(charge > 3)
   {
      charge = 3;
   }
   _root.batbem.bar._y = (3 - Math.floor(charge)) * 11.1;
   if(_root.batbem.bar2._y > (3 - charge) * 11.1)
   {
      _root.batbem.bar2._y--;
   }
   if(_root.batbem.bar2._y < (3 - charge) * 11.1)
   {
      _root.batbem.bar2._y = (3 - charge) * 11.1;
   }
   if(_root.blacker._currentframe > 48)
   {
      _root.emhealth = health;
      _root.emhealth22 = health;
      this.swapDepths(12222);
      removeMovieClip(this);
   }
}
