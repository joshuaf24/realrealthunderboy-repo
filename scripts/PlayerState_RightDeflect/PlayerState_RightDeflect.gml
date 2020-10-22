if (sprite_index != sprightdeflect)
{
	sprite_index = sprightdeflect;
	image_index = 0;
}
if (keyRightDeflect == false) && (image_index > 2)
{
	global.state = PLAYERSTATE.NEUTRAL;
}
if (AnimationEnd())
{
	global.state = PLAYERSTATE.RIGHT_BLOCK;
}
