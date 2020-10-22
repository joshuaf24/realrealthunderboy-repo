ProcessAttackR();

if (keyRightAttack) && (image_index > queueframe)
{
	rightattackqueue = true;
}
if (keyLeftAttack) && (image_index > queueframe)
{
	leftattackqueue = true;
}

if (AnimationEnd())
{
	global.state = PLAYERSTATE.NEUTRAL;
}


