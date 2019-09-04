public with sharing class HasPin implements ATMState {
	ATMMachine atmMachine;

	public HasPin(ATMMachine newMachine) {
		atmMachine = newMachine;
	}

	public void insertCard() {
		System.debug('You already entered a card.');
	}

	public void ejectCard() {
		System.debug('Your card is ejected.');
		atmMachine.setATMState(atmMachine.getNoCardState());
	}

	public void enterPin(Integer pin) {
		System.debug('You already entered your pin.');
	}

	public void requestCash(Integer requestAmount) {
		if (requestAmount > atmMachine.availableCash) {
			System.debug('We dont have that much cash in the machine.');
			System.debug('Your card is ejected.');
			atmMachine.setATMState(atmMachine.getNoCardState());
		} else {
			System.debug(requestAmount + ' is dispensed by the machine.');
			atmMachine.setCashInMachine(atmMachine.availableCash - requestAmount);

			System.debug('Your card is ejected.');
			atmMachine.setATMState(atmMachine.getNoCardState());

			if (atmMachine.availableCash <= 0) {
				atmMachine.setATMState(atmMachine.getNoCashState());
			}
		}
	}
}
