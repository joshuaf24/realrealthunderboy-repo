if (sprite_index != senemy1_leftblock)
{
	sprite_index = senemy1_leftblock;
}

if AnimationEnd()
{
	switchstate = switchstate + 1 
	if (switchstate > 3)
	{
		randomten = irandom(10)
		if (switchstate > randomten)
		{
			global.counter = 0;
			switchstate = 0;
			global.estate = ENEMYSTATE.RIGHT_BLOCK;
		}
		else if (switchstate < randomten)
		{
			image_index = 0;
		}
		else if (switchstate == randomten)
		{
			global.counter = 0;
			switchstate = 0;
			global.estate = ENEMYSTATE.RIGHT_ATTACK_A;
		}
	}
}

