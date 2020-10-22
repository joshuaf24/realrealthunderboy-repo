if (sprite_index != senemy1_hittopright)
{
	sprite_index = senemy1_hittopright;	
	image_index = 0;
}
if  (global.ehp <= 0)
{
	global.estate = ENEMYSTATE.DOWNED;
}
if (EAnimationEnd())
	{
		show_debug_message("enemy in vulnerable stray");
		global.estate = ENEMYSTATE.VULNERABLE_STRAY;
	}