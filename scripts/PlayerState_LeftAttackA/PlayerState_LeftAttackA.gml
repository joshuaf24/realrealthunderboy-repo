ProcessAttackL();

if (keyRightAttack) && (image_index > queueframe)
{
	rightattackqueue = true;
}

if (AnimationEnd())
{
	if rightattackqueue == true
	{
		rightattackqueue = false;
		global.state = PLAYERSTATE.RIGHT_ATTACK_A;
	}
	if rightattackqueue == false
	{
		global.estate = PLAYERSTATE.NEUTRAL;
	}
}

