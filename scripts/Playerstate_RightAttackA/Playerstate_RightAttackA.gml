ProcessAttackR();
if (keyLeftAttack) && (image_index > queueframe)
{
	leftattackqueue = true;
	show_debug_message("left attack queue")
}
if (AnimationEnd())
{
	if (leftattackqueue = true)
	{
		global.state = PLAYERSTATE.LEFT_ATTACK_A;
	}
	if (AnimationEnd())
	{
		if (leftattackqueue = false)
		global.state = PLAYERSTATE.NEUTRAL;
	}
}
