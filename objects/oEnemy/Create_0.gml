// Inherit the parent event
event_inherited();

// Other
state = ENEMYSTATE.WANDER;
statePrevious = ENEMYSTATE.WANDER;

// Enemy Sprites
sprMove = sEnemyRun;
sprAttack = sEnemyRun;
// sprDie = sEnemyDie;
// sprHurt = sEnemyHurt;

// Enemy Scripts
enemyScripts[ENEMYSTATE.WANDER] = scEnemyWander;
enemyScripts[ENEMYSTATE.CHASE] = scEnemyChase;
enemyScripts[ENEMYSTATE.ATTACK] = scEnemyAttack;
enemyScripts[ENEMYSTATE.DIE] = scEnemyDie;
enemyScripts[ENEMYSTATE.HURT] = scEnemyHurt;
