public with sharing class ATMProxy implements GetATMData {
	public ATMState getATMState() {
		ATMMachine realATMMachine = new ATMMachine();
		return realATMMachine.getATMState();
	}

	public Integer getCashInMachine() {
		ATMMachine realATMMachine = new ATMMachine();
		return realATMMachine.getCashInMachine();
	}
}
