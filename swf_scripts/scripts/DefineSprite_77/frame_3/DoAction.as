function sendData()
{
   send_var.game = game_name;
   send_var.score = highscore;
   send_var.name = _root.username;
   if(send_var.name == "")
   {
      send_var.name = "guest" + int(Math.random() * 1000);
   }
   send_var.sendAndLoad("http://www.freeworldgroup.com/score/score.asp",load_var,"POST");
   gotoAndStop("sending");
}
stop();
gold_txt.text = highscore;
send_var = new LoadVars();
load_var = new LoadVars();
ok_btn.onRelease = sendData;
load_var.onLoad = function()
{
   gotoAndStop("done");
};
