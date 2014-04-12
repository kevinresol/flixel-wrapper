package flixel.addons.wrapper.highscore;

/**
 * ...
 * @author Kevin
 */
interface IFlxHighScore<TUser, TScore>
{
	function showScoreboard():Void;
	function hideScoreboard():Void;
	function setUser(user:TUser):Void;
	function getScore(user:TUser):Float;
	function getScores():Map<TUser,TScore>;
	function submitScore(score:TScore):Void;	
}

