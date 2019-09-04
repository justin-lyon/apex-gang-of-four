public with sharing class DeviceButton {

	Command theCommand;

	public DeviceButton(Command newCommand) {
		this.theCommand = newCommand;
	}

	public void press() {
		theCommand.execute();
	}

	public void pressUndo() {
		theCommand.undo();
	}
}
