show_debug_message("limpact")
if (sprite_index != splimpact)
{
	sprite_index = splimpact;
	image_index = 0;
}
if (keyRightAttack)
{
	if (rightattackqueue != true)
	{
		show_debug_message("late right queue");
		rightattackqueue = true;
	}
}
if (keyLeftAttack)
{
	if (leftattackqueue != true)
	{
		show_debug_message("late left queue");
		leftattackqueue = true;
	}
}
if AnimationEnd()
{
	if (rightattackqueue == true)
	{
		rightattackqueue = false;
		leftattackqueue = false;
		show_debug_message("executing")
		//path_start(prightattack,10,path_action_stop,false);
		global.state = PLAYERSTATE.RIGHT_ATTACK_A;
	}
	else if (leftattackqueue == true)
	{
		rightattackqueue = false;
		leftattackqueue = false;
		//path_start(pleftattack,10,path_action_stop,false)
		global.state = PLAYERSTATE.LEFT_ATTACK_A;
	}
	else if (rightattackqueue == false)
	{
		show_debug_message("not executing")
		global.state = PLAYERSTATE.NEUTRAL;
	}	
}
