public with sharing class HasCard implements ATMState {
	ATMMachine atmMachine;

	public HasCard(ATMMachine newMachine) {
		atmMachine = newMachine;
	}

	public void insertCard() {
		System.debug('You can only insert one card at a time.');
	}

	public void ejectCard() {
		System.debug('Your card is ejected.');
		atmMachine.setATMState(atmMachine.getNoCardState());
	}

	public void enterPin(Integer pin) {
		if (pin == 1234) {
			System.debug('You entered the correct PIN.');
			atmMachine.correctPinEntered = true;
			atmMachine.setATMState(atmMachine.getHasPin());
		} else {
			System.debug('You entered the wrong PIN.');
			atmMachine.correctPinEntered = false;
			System.debug('Your card is rejected.');
			atmMachine.setATMState(atmMachine.getNoCardState());
		}
	}

	public void requestCash(Integer amount) {
		System.debug('You have not entered your pin.');
	}
}
