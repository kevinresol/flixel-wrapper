package flixel.addons.wrapper;
import flixel.FlxG;
import flixel.FlxState;

/**
 * ...
 * @author Kevin
 */
typedef FlxStateManager = FlxTypedStateManager<FlxStateType>;

enum FlxStateType
{
	SAd;
	SSponsor;
	SSplash;
	SMainMenu;
	SIntro;
	SGame;
	SGameOver;
	SScore;	
	SCredits;
}