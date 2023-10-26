hitpoints = min(hitpoints + 2, hitpoints_max);

_sound = choose(snd_pickup_1, snd_pickup_2, snd_pickup_3);

audio_play_sound(_sound, 0, 0, 1, undefined, 1.0);

with(other) {
	instance_destroy();
}