public with sharing class EnemyTank implements EnemyAttacker {

	Random generator = new Random();

	public void fireWeapon() {
		Integer attackDamage = generator.nextInt(10) + 1;
		System.debug('Tank does ' + attackDamage + ' damage.');
	}

	public void driveForward() {
		Integer movement = generator.nextInt(5) + 1;
		System.debug('Tank moves ' + movement + 'spaces.');
	}

	public void assignDriver(String driverName) {
		System.debug(driverName + ' is driving the Tank.');
	}
}
