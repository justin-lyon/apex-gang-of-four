@isTest
private class EnemyAttackerTest {
	static TestMethod void test_EnemyAttacker() {
		EnemyTank rx7Tank = new EnemyTank();
		EnemyRobot fred = new EnemyRobot();

		EnemyAttacker robotAdapter = new EnemyRobotAdapter(fred);

		System.debug('The robot');
		fred.reactToHuman('Paul');
		fred.walkForward();
		fred.smashWithHands();

		System.debug('The tank');
		rx7Tank.assignDriver('Frank');
		rx7Tank.driveForward();
		rx7Tank.fireWeapon();

		System.debug('Bulkified with adapter');
		List<EnemyAttacker> attackers = new List<EnemyAttacker>();
		attackers.add(rx7Tank);
		attackers.add(robotAdapter);

		for(EnemyAttacker attacker : attackers) {
			attacker.assignDriver('George');
			attacker.driveForward();
			attacker.fireWeapon();
		}
	}
}
