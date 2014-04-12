package flixel.addons.wrapper;
import flixel.FlxG;
import flixel.FlxState;

/**
 * ...
 * @author Kevin
 */
@:generic
class FlxTypedStateManager<T:EnumValue>
{
	private var states:Map<T, FlxState>;
	
	public function new() 
	{
		states = new Map();
	}
	
	public function add(type:T, state:FlxState)
	{
		var current = states.get(type);
		
		// Immediate switch to the new state if type is current
		if (current != null && FlxG.state == current)
			FlxG.switchState(state);
		
		states.set(type, state);
	}
	
	public function switchTo(type:T):Void
	{
		var s = states.get(type);
		
		if (s == null)
			throw 'State not set ($type)';
		else
			FlxG.switchState(s);
	}


	
}