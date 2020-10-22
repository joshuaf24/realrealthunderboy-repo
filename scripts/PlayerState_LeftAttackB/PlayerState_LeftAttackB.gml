ProcessAttackL();

if (keyLeftAttack) && (image_index > 4)
{
	leftattackqueue = true;
}
if (keyRightAttack) && (image_index > queueframe)
{
	rightattackqueue = true;
}
if (AnimationEnd())
{
	global.state = PLAYERSTATE.NEUTRAL;
}

