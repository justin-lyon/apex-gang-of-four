@isTest
private class ATMMachineTest {
	static TestMethod void RunMachine() {
		// State Pattern Tests
		ATMMachine machine = new ATMMachine();
		machine.insertCard();
		machine.ejectCard();
		machine.insertCard();
		machine.enterPin(1234);
		machine.requestCash(2000);
		machine.insertCard();
		machine.enterPin(1234);

		// Proxy Pattern Tests
		GetATMData realATMMachine = new ATMMachine();
		GetATMData atmProxy = new ATMProxy();

		System.debug('Current ATM State: ' + atmProxy.getATMState());
		System.debug('Cash in ATM Machine: ' + atmProxy.getCashInMachine());

		// The user can't perform the following action because ATM Proxy doesn't
		// have access to that potentially harmful method.
		// atmProxy.setCashInMachine(10000);
	}
}
