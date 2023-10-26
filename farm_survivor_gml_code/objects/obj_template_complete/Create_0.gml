// Stop all audio.
audio_stop_all();

// Play the lose game jingle.
audio_play_sound(snd_lose, 0, 0, 1.0, undefined, 1.0);

// Create exit button.
instance_create_layer(x + -200, 1080 - 150, "Buttons", obj_button_exit);

// Create retry button.
instance_create_layer(x + 200, 1080 - 150, "Buttons", obj_button_retry);