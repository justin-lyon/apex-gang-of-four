public with sharing class NoCard implements ATMState {
	ATMMachine atmMachine;

	private final String ERROR_MESSAGE = 'You have not entered your card.';

	public NoCard(ATMMachine newMachine) {
		atmMachine = newMachine;
	}

	public void insertCard() {
		System.debug('Please enter your pin.');
		atmMachine.setATMState(atmMachine.getYesCardState());
	}

	public void ejectCard() {
		System.debug(ERROR_MESSAGE);
	}

	public void enterPin(Integer pin) {
		System.debug(ERROR_MESSAGE);
	}

	public void requestCash(Integer amount) {
		System.debug(ERROR_MESSAGE);
	}
}
