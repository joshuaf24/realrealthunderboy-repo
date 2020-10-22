
if (sprite_index != sprimpact)
{
	sprite_index = sprimpact;
	image_index = 0;
}
//else if (image_speed > 3)
//{
//	punchspeed = 18;
//}

if (keyLeftAttack)
{
	if (leftattackqueue != true)
	{
		show_debug_message("late left queue");
		leftattackqueue = true;
	}
}
if (keyRightAttack)
{
	if (rightattackqueue != true)
	{
		show_debug_message("late left queue");
		rightattackqueue = true;
	}
}
if AnimationEnd()
{
	if (leftattackqueue == true)
	{
		leftattackqueue = false;
		rightattackqueue = false;
		show_debug_message("executing")
	//	path_start(pleftattack,10,path_action_stop,false);
		global.state = PLAYERSTATE.LEFT_ATTACK_A;
	}
	//else if (rightattackqueue == true)
	//{
	//	rightattackqueue = false;
	//	leftattackqueue = false;
	//	show_debug_message("executing")
		//path_start(prightattack,10,path_action_stop,false);
	//	global.state = PLAYERSTATE.RIGHT_ATTACK_A;
	//}
	//else
	//{
	//	show_debug_message("not executing")
		//global.state = PLAYERSTATE.NEUTRAL;
	//}		
}
