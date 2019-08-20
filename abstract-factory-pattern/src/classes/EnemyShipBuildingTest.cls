@isTest
private class EnemyShipBuildingTest {
	static TestMethod void run_givenShips_shouldGetPlay() {
		EnemyShipBuilding builder = new UFOEnemyShipBuilding();
		EnemyShip gruntUfo = builder.orderTheShip('UFO');
		EnemyShip bossUfo = builder.orderTheShip('UFO BOSS');

		gruntUfo.toString();
		bossUfo.toString();
	}

	static TestMethod void orderTheShip_givenUFO_shouldGetGruntUFO() {
		EnemyShipBuilding builder = new UFOEnemyShipBuilding();
		EnemyShip gruntUfo = builder.orderTheShip('UFO');

		System.assert(gruntUfo instanceOf UFOEnemyShip, 'Grunt should be a UFOEnemyShip.');
		System.assert(!(gruntUfo instanceOf UFOBossEnemyShip), 'Grunt should NOT be a UFOBossEnemyShip.');
	}

	static TestMethod void orderTheShip_givenUFOBoss_shouldGetBoss() {
		EnemyShipBuilding builder = new UFOEnemyShipBuilding();
		EnemyShip bossUfo = builder.orderTheShip('UFO BOSS');

		System.assert(bossUfo instanceOf UFOBossEnemyShip, 'Grunt should be a UFOBossEnemyShip.');
		System.assert(!(bossUfo instanceOf UFOEnemyShip), 'Grunt should NOT be a UFOEnemyShip.');
	}
}
