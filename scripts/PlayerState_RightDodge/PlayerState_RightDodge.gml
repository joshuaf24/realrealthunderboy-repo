if (sprite_index != sprightdodge)
{
	
	sprite_index = sprightdodge;
	image_index = 0;
	
}
if (keyLeftAttack)
{
	global.state = PLAYERSTATE.CROSS;
	path_start(pcross,30,path_action_stop,false);
}
if AnimationEnd()
{
	global.state = PLAYERSTATE.NEUTRAL;
}
