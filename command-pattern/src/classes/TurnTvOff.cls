public with sharing class TurnTvOff implements Command {

	ElectronicDevice device;

	public TurnTvOff(ElectronicDevice newDevice) {
		this.device = newDevice;
	}

	public void execute() {
		device.powerOff();
	}

	public void undo() {
		device.powerOn();
	}
}
