if (sprite_index != senemy1_lowguard)
{
	sprite_index = senemy1_lowguard;
}
if path_index = -1
   {
   path_start(p_enemybob,2,path_action_reverse,false);
   }

with(oplayer)
{
	if (global.state == PLAYERSTATE.RIGHT_ATTACK_A) && (image_index == 2)
	{
		audio_play_sound(snenemyhit,5,false);
		show_debug_message("a clean right cross!");
		global.estate = ENEMYSTATE.HITSTUN_L;
	with(oenemy)
	{
		path_start(p_enemyhitleft,8,path_action_stop,true);
	}
	}
		if (global.state == PLAYERSTATE.LEFT_ATTACK_A) && (image_index == 2)
	{
		audio_play_sound(snenemyhit,5,false);
		show_debug_message("a clean left hook!");
		global.estate = ENEMYSTATE.HITSTUN_R;
	with(oenemy)
	{
		path_start(p_enemyhitright,8,path_action_stop,true);
	}
	}
}






