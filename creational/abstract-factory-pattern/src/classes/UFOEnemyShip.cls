public with sharing class UFOEnemyShip extends EnemyShip {
	private EnemyShipFactory shipFactory;

	public UFOEnemyShip(EnemyShipFactory factory) {
		this.shipFactory = factory;
	}

	public override void makeShip() {
		System.debug('Making new ship ' + getName());
		weapon = shipFactory.addESGun();
		engine = shipFactory.addESEngine();
	}
}
