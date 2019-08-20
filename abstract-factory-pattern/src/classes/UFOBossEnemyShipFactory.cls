public with sharing class UFOBossEnemyShipFactory implements EnemyShipFactory {

	public ESWeapon addESGun() {
		return new ESUFOBossGun();
	}

	public ESEngine addESEngine() {
		return new ESUFOBossEngine();
	}
}
