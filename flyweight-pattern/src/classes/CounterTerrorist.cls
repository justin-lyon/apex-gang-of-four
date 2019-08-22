public with sharing class CounterTerrorist implements Player {
	private final String TASK;
	private String weapon;

	public CounterTerrorist() {
		TASK = 'DIFFUSE BOMB';
	}

	public void assignWeapon(String newWeapon) {
		weapon = newWeapon;
	}

	public void mission() {
		System.debug('Counter Terrorist with weapon ' + weapon + ' | ' + ' Task is ' + TASK);
	}
}
