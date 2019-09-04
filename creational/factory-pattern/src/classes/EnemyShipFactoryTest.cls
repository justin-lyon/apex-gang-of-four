@isTest
private class EnemyShipFactoryTest {

	static TestMethod void run_givenShips_shouldGetPlay() {
		EnemyShipFactory factory = new EnemyShipFactory();
		List<EnemyShip> ships = new List<EnemyShip>();
		ships.add(factory.makeEnemyShip('U'));
		ships.add(factory.makeEnemyShip('R'));
		ships.add(factory.makeEnemyShip('B'));

		for(EnemyShip ship : ships) {
			ship.displayEnemyShip();
			ship.followHeroShip();
			ship.enemyShipShoots();
		}
	}

	static TestMethod void makeEnemyShip_givenU_shouldGetUFOEnemyShip() {
		EnemyShipFactory factory = new EnemyShipFactory();

		Test.startTest();

			EnemyShip ufo = factory.makeEnemyShip('U');

		Test.stopTest();

		System.assert(ufo instanceOf UFOEnemyShip, 'Should be a ufo.');
		System.assert(!(ufo instanceOf RocketEnemyShip), 'Should not be a rocket.');
	}

	static TestMethod void makeEnemyShip_givenR_shouldGetRocketEnemyShip() {
		EnemyShipFactory factory = new EnemyShipFactory();

		Test.startTest();

			EnemyShip rocket = factory.makeEnemyShip('R');

		Test.stopTest();

		System.assert(rocket instanceOf RocketEnemyShip, 'Should be a rocket.');
		System.assert(!(rocket instanceOf UFOEnemyShip), 'Should not be a ufo.');
	}

	static TestMethod void makeEnemyShip_givenB_shouldGetBigUFOEnemyShip() {
		EnemyShipFactory factory = new EnemyShipFactory();

		Test.startTest();

			EnemyShip bigUfo = factory.makeEnemyShip('B');

		Test.stopTest();

		System.assert(bigUfo instanceOf BigUFOEnemyShip, 'Should be a bigUfo.');
		System.assert(!(bigUfo instanceOf UFOEnemyShip), 'Should not be a ufo.');
	}
}
