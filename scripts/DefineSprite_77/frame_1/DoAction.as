stop();
_global.game_name = _game_name;
var highscore = eval(score_var);
_global.viewHighscore = function()
{
   getURL("http://www.freeworldgroup.com/score/index.asp?game=" + game_name,"_blank");
};
if(highscore == 0)
{
   this._visible = false;
}
trace(game_name);
trace(highscore);
trace("http://www.freeworldgroup.com/score/index.asp?game=" + game_name);
