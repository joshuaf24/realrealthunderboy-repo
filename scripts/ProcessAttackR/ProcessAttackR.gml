//path_start(prightattack,15,path_action_stop,false);
if (sprite_index != sprightattacka)
{
	sprite_index = sprightattacka;
	image_index = 0;
}
//ENEMY COUNTER
#region
if(image_index == 2) && (global.estate == ENEMYSTATE.VULNERABLE_STRAY)
{	
if (image_index == 1) && (global.counter >= 2)
{
	show_debug_message("counter")
	global.counter = 0;
	global.estate = ENEMYSTATE.RIGHT_ATTACK_A;
	image_index = 2;
	with (oenemy)
	{
		path_start(penemyleftpunch,10,path_action_stop,false);
	}
}
#endregion
//ENEMY HIT
#region
if (image_index == 4) && (global.estate == ENEMYSTATE.VULNERABLE_STRAY)
{
	show_debug_message("processing left hit")
	image_index = 5;
	audio_play_sound(snenemyhit,5,false)
	global.state = PLAYERSTATE.RIMPACT;
	global.estate = ENEMYSTATE.HITSTUN_L;
	global.ehp -= 5;
	thunder -= 3;
	with (oenemy)
	{
		path_start(p_enemyhitleft,10,path_action_stop,false);
	}
}
#endregion
//ENEMY BLOCK
#region
if (image_index == 4) && (global.estate == ENEMYSTATE.RIGHT_BLOCK)
{
	if (global.counter <= 2)
	{
		audio_play_sound(snenemyblock,5,false)
		global.state = PLAYERSTATE.RIMPACT
		global.counter = global.counter + 1;
		thunder -= 5;
		image_index = 5;
	}
}
#endregion
//ENEMY CRIT R
#region
//this is tricky because it needs to call the specific frames for each animation
if (image_index == 4) && (global.estate == ENEMYSTATE.LEFT_ATTACK_A)
{
	with (oenemy)
	{
		//if the player lands a punch during the crit window
		if (image_index == 9)
		{
			audio_play_sound(snstagger,5,false)
			global.estate = ENEMYSTATE.STAGGERED5;
			global.state = PLAYERSTATE.RIMPACT;
			global.ehp -= 10;
			path_start(p_enemyhitright,10,path_action_stop,false);
			with(oplayer)
			{
				thunder -= 5;
				image_index = 5;
			}
		}
		//if the player lands a punch outside of the crit window
		if (image_index < 9) || (image_index > 10)
		{
			audio_play_sound(snenemyhit,5,false)
			global.estate = ENEMYSTATE.HITSTUN_R;
			global.state = PLAYERSTATE.LIMPACT;
			global.ehp -= 2;
			path_start(p_enemyhitright,10,path_action_stop,false);
			with (oplayer)
			{
				thunder -= 5;
				image_index = 5;
			}
		}
	}
}
#endregion
//ENEMY CRIT L
#region
//this is tricky because it needs to call the specific frames for each animation
if (image_index == 4) && (global.estate == ENEMYSTATE.LEFT_ATTACK_A)
{
	with (oenemy)
	{
		//if the player lands a punch during the crit window
		if (image_index == 9)
		{
			audio_play_sound(snstagger,5,false)
			global.estate = ENEMYSTATE.STAGGERED5;
			global.state = PLAYERSTATE.RIMPACT;
			global.ehp -= 10;
			path_start(p_enemyhitleft,10,path_action_stop,false);
			with(oplayer)
			{
				thunder -= 5;
				image_index = 5;
			}
		}
		//if the player throws a punch before the attack window
		else if (image_index != 9) 
		{
		}
		//if the player lands a punch after the attack window
//		if (image_index > 10)
//		{
//			audio_play_sound(snenemyhit,5,false)
//			global.estate = ENEMYSTATE.HITSTUN_L;
//			global.state = PLAYERSTATE.RIMPACT;
//			global.ehp -= 2;
//			path_start(p_enemyhitleft,10,path_action_stop,false);
//			with (oplayer)
//			{
//				thunder -= 5;
//				image_index = 5;
//			}
//		}
		
	}
}
#endregion
//ENEMY STAGGERED
#region
if (image_index == 4) && (global.estate == ENEMYSTATE.STAGGERED5)
{
	audio_play_sound(snenemyhit,5,false)
	global.ehp -= 10;
	thunder -= 5;
	global.estate = ENEMYSTATE.STAGGERED4;
	global.state = PLAYERSTATE.LIMPACT;
	image_index = 5;
	with (oenemy)
	{
		path_start(p_enemyhitright,10,path_action_stop,false);
	}
}
if (image_index == 4) && (global.estate == ENEMYSTATE.STAGGERED4)
{
	audio_play_sound(snenemyhit,5,false)
	global.ehp -= 10;
	thunder -= 5;
	global.estate = ENEMYSTATE.STAGGERED3;
	global.state = PLAYERSTATE.LIMPACT;
	image_index = 5;
	with (oenemy)
	{
		path_start(p_enemyhitright,10,path_action_stop,false);
	}
}
if (image_index == 4) && (global.estate == ENEMYSTATE.STAGGERED3)
{
	audio_play_sound(snenemyhit,5,false)
	global.ehp -= 10;
	thunder -= 5;
	global.estate = ENEMYSTATE.STAGGERED2;
	global.state = PLAYERSTATE.LIMPACT;
	image_index = 5;
	with (oenemy)
	{
		path_start(p_enemyhitright,10,path_action_stop,false);
	}
}
if (image_index == 4) && (global.estate == ENEMYSTATE.STAGGERED2)
{
	audio_play_sound(snenemyhit,5,false)
	global.ehp -= 10;
	thunder -= 5;
	global.estate = ENEMYSTATE.STAGGERED1;
	global.state = PLAYERSTATE.LIMPACT;
	image_index = 5;
	with (oenemy)
	{
		path_start(p_enemyhitright,10,path_action_stop,false);
	}
}
if (image_index == 4) && (global.estate == ENEMYSTATE.STAGGERED1)
{
	audio_play_sound(snguardbreak,5,false)
	global.ehp -= 10;
	thunder -= 5;
	global.estate = ENEMYSTATE.KNOCKBACK;
	global.state = PLAYERSTATE.LIMPACT;
	image_index = 5;
	with (oenemy)
	{
		path_start(p_enemyhitright,10,path_action_stop,false);

	}
}			
#endregion	
if AnimationEnd()
global.state = PLAYERSTATE.NEUTRAL;
}