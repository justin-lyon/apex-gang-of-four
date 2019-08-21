public with sharing class TurnTvUp implements Command {
	ElectronicDevice device;

	public TurnTvUp(ElectronicDevice newDevice) {
		this.device = newDevice;
	}

	public void execute() {
		device.volumeUp();
	}

	public void undo() {
		device.volumeDown();
	}
}
