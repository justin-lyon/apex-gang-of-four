public with sharing class TurnTvOn implements Command {

	ElectronicDevice device;

	public TurnTvOn(ElectronicDevice newDevice) {
		this.device = newDevice;
	}

	public void execute() {
		device.powerOn();
	}

	public void undo() {
		device.powerOff();
	}
}
