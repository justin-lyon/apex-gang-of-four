@isTest
private class TvRemoteTest {
	static TestMethod void test_tvremote() {
		// Turn the TV On
		ElectronicDevice television = TVRemote.getDevice();
		TurnTvOn onCommand = new TurnTvOn(television);
		DeviceButton onPressed = new DeviceButton(onCommand);
		onPressed.press();

		// Turn the TV Off
		TurnTvOff offCommand = new TurnTvOff(television);
		onPressed = new DeviceButton(offCommand);
		onPressed.press();

		// Turn the volume up
		TurnTvUp volUpCommand = new TurnTvUp(television);
		onPressed = new DeviceButton(volUpCommand);
		onPressed.press();
		onPressed.press();
		onPressed.press();
		onPressed.pressUndo();

		// Create a TV and Radio to turn off both with one press
		Television myTv = new Television();
		Radio myRadio = new Radio();

		List<ElectronicDevice> devices = new List<ElectronicDevice>();
		devices.add(myTv);
		devices.add(myRadio);

		TurnItAllOff turnOffDevices = new TurnItAllOff(devices);
		DeviceButton allOff = new DeviceButton(turnOffDevices);
		allOff.press();

		allOff.pressUndo();
	}
}
