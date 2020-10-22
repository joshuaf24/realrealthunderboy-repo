sprite_index = spneutral;
if (keyLeftAttack)
{
	rightattackqueue = false;
	leftattackqueue = false;
	global.state = PLAYERSTATE.LEFT_ATTACK_A;
	//path_start(pleftattack,punchspeed,path_action_stop,true);
}
if (keyRightAttack)
{
	rightattackqueue = false;
	leftattackqueue = false;
	global.state = PLAYERSTATE.RIGHT_ATTACK_A;
	//path_start(prightattack,punchspeed,path_action_stop,true);
}

//if (keyLeftDodge) 
//{
//	global.state = PLAYERSTATE.LEFT_DODGE;
//	path_start(pleftdodge,20,path_action_stop,true);
//}
	
if (keyRightDodge) && (thunder < 100)
{
	global.state = PLAYERSTATE.RIGHT_DODGE;
	//path_start(prightdodge,20,path_action_stop,true);
	thunder += 5;
}
if (keyLeftDeflect)
{
	global.state = PLAYERSTATE.LEFT_DEFLECT;
	instance_create_layer(377,483,"effects",odeflectpoof)
}
if (keyRightDeflect)
{
	global.state = PLAYERSTATE.RIGHT_DEFLECT;
	instance_create_layer(377,600,"effects",odeflectpoofR)
}
if (keyMidDeflect)
{
	global.state = PLAYERSTATE.MID_DEFLECT;
	instance_create_layer(377,600,"effects",odeflectpoofm)
}



