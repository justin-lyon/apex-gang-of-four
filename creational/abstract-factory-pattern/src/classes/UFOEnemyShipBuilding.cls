public with sharing class UFOEnemyShipBuilding extends EnemyShipBuilding {
	protected override EnemyShip makeEnemyShip(String typeOfShip) {
		EnemyShip newShip = null;

		if(typeOfShip.equals('UFO')) {
			EnemyShipFactory shipPartsFactory = new UFOEnemyShipFactory();
			newShip = new UFOEnemyShip(shipPartsFactory);
			newShip.setName('UFO Grunt Ship');
		} else if (typeOfShip.equals('UFO BOSS')) {
			EnemyShipFactory shipPartsFactory = new UFOBossEnemyShipFactory();
			newShip = new UFOBossEnemyShip(shipPartsFactory);
			newShip.setName('UFO Boss Ship');
		}
		return newShip;
	}
}
