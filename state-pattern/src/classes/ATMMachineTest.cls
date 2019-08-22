@isTest
private class ATMMachineTest {
	static TestMethod void RunMachine() {
		ATMMachine machine = new ATMMachine();
		machine.insertCard();
		machine.ejectCard();
		machine.insertCard();
		machine.enterPin(1234);
		machine.requestCash(2000);
		machine.insertCard();
		machine.enterPin(1234);
	}
}
