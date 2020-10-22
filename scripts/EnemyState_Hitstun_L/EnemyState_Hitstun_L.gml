if (sprite_index != senemy1_hitright)
{
	sprite_index = senemy1_hittopleft;	
//	image_index = 0;
}

if (AnimationEnd())
{
	//if  (global.ehp > 0)
	//{
		show_debug_message("enemy in vulnerable stray");
		global.estate = ENEMYSTATE.VULNERABLE_STRAY;
	//	punchestoswitch = punchestoswitch + 1;
	//	if (punchestoswitch >= punchesthisside)
	//	{
	//		punchestoswitch = 0;
	//		global.estate = ENEMYSTATE.RIGHT_BLOCK;
	//	}
	//	else if (punchestoswitch < punchesthisside)
	//	{
	//		global.estate = ENEMYSTATE.;
	//	}
//	}
//	else if (global.ehp <= 0)
//	{
//		global.estate = ENEMYSTATE.DOWNED;
//	}
}

