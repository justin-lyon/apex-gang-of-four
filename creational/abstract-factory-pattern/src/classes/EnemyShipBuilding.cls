public abstract class EnemyShipBuilding {
	protected abstract EnemyShip makeEnemyShip(String typeOfShip);

	public EnemyShip orderTheShip(String typeOfShip) {
		EnemyShip ship = makeEnemyShip(typeOfShip);
		ship.makeShip();
		ship.displayEnemyShip();
		ship.followHeroShip();
		ship.enemyShipShoots();
		return ship;
	}
}
