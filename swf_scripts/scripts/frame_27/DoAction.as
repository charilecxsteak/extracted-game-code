stop();
num += 1;
duplicateMovieClip("m","m" + num,16384 + num);
duplicateMovieClip("bm","bm" + num,16384 + (num + 50));
set("_root.m" add num add ".mynumber",num);
set("_root.bm" add num add ".mynumber",num);
setProperty("bm" + num, _X, 640 - num * 16);
setProperty("m" + num, _X, random(2) * 638 + 1);
setProperty("m" + num, _Y, _root.em._y);
