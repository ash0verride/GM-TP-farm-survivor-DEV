audio_stop_all();

// Play the win game jingle.
audio_play_sound(snd_win, 0, 0, 1.0, undefined, 1.0);

instance_create_layer(1920 / 2, 1080 - 150, "Buttons", obj_button_reroll);

get_upgrades();