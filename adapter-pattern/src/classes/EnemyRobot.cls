public with sharing class EnemyRobot {

	Random generator = new Random();

	public void smashWithHands() {
		Integer attackDamage = generator.nextInt(10) + 1;
		System.debug('Robot does ' + attackDamage + ' damage with its hands.');
	}

	public void walkForward() {
		Integer movement = generator.nextInt(5) + 1;
		System.debug('Robot walks ' + movement + 'spaces.');
	}

	public void reactToHuman(String humanName) {
		System.debug('Robot tramps on the ' + humanName);
	}
}
