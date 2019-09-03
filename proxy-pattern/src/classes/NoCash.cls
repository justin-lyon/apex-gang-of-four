public with sharing class NoCash implements ATMState {
	ATMMachine atmMachine;

	private final String NO_MONEY = 'We dont have any money.';

	public NoCash(ATMMachine newMachine) {
		atmMachine = newMachine;
	}

	public void insertCard() {
		System.debug(NO_MONEY);
		System.debug('Your card was rejected.');
	}

	public void ejectCard() {
		System.debug(NO_MONEY);
		System.debug('There is no card to eject.');
	}

	public void enterPin(Integer pin) {
		System.debug(NO_MONEY);
	}

	public void requestCash(Integer amount) {
		System.debug(NO_MONEY);
	}
}
