if (sprite_index != senemy1_hitright)
{
	sprite_index = senemy1_hittopleft;	
	image_index = 0;
	audio_play_sound(snenemyhit,5,false);
}
if (AnimationEnd())
{
		show_debug_message("enemy in vulnerable stray");
		path_start(p_enemybob,8,path_action_reverse,false);
		global.estate = ENEMYSTATE.VULNERABLE_STRAY;
}

