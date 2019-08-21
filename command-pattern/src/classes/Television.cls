public with sharing class Television implements ElectronicDevice {
	private Boolean isOn = false;
	private Integer volume = 0;

	public void powerOn() {
		isOn = true;
		System.debug('Power is on.');
	}

	public void powerOff() {
		isOn = false;
		System.debug('Power is off.');
	}

	public void volumeUp() {
		volume++;
		System.debug('Volume: ' + volume);
	}

	public void volumeDown() {
		volume--;
		System.debug('Volume: ' + volume);
	}
}
