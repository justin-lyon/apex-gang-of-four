public with sharing class TurnItAllOff implements Command {
	List<ElectronicDevice> devices;

	public TurnItAllOff(List<ElectronicDevice> newDevices) {
		this.devices = newDevices;
	}

	public void execute() {
		for(ElectronicDevice device : devices) {
			device.powerOff();
		}
	}

	public void undo() {
		for(ElectronicDevice device : devices) {
			device.powerOn();
		}
	}
}
