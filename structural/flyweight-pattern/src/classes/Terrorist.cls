public with sharing class Terrorist implements Player {
	private final String TASK;
	private String weapon;

	public Terrorist() {
		TASK = 'PLANT A BOMB';
	}

	public void assignWeapon(String newWeapon) {
		weapon = newWeapon;
	}

	public void mission() {
		System.debug('Terrorist with weapon ' + weapon + ' | ' + ' Task is ' + TASK);
	}
}
