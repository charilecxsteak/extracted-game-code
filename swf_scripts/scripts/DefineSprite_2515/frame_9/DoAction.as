stop();
i = 0;
while(i < Number(_root.vss) - Number(mynumber))
{
   tellTarget("_root.bm" add (Number(mynumber) + 1 + i))
   {
      moving += 4;
   }
   i++;
}
