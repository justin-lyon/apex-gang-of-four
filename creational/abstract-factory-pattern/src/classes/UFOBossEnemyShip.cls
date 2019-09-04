public with sharing class UFOBossEnemyShip extends EnemyShip {
	private EnemyShipFactory shipFactory;

	public UFOBossEnemyShip(EnemyShipFactory factory) {
		this.shipFactory = factory;
	}

	public override void makeShip() {
		System.debug('Making new ship ' + getName());
		weapon = shipFactory.addESGun();
		engine = shipFactory.addESEngine();
	}
}
