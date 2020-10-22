ProcessAttackL();

leftqueue = false;

if (keyRightAttack) && (image_index > 6)
{
	global.state = PLAYERSTATE.RIGHT_ATTACK_A;
	path_start(prightattack,punchspeed,path_action_stop,true);
}
if (keyLeftAttack) && (image_index > 6)
{
	global.state = PLAYERSTATE.LEFT_ATTACK_A;
	image_index = 0;
	path_start(pleftattack,punchspeed,path_action_stop,true);
	show_debug_message("huh")
}

if (AnimationEnd())
{
	global.state = PLAYERSTATE.NEUTRAL;
}