function scHurtPlayer(_direction, _force, _damage){
	if (oPlayer.invulnerable <= 0){
		global.playerHealth = max(0, global.playerHealth - _damage);
		if (global.playerHealth > 0){
			with (oPlayer){
				state = scPlayerStateBonk;
				direction = _direction - 180;
				moveDistanceRemaining = _force;
				flash = 0.7;
				invulnerable = 60;
				flashShader = shWhiteFlash;
			}
		} else {
			oPlayer.state = scPlayerStateDead;
		}
	}
}
