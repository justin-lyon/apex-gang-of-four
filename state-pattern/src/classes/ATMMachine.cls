public with sharing class ATMMachine implements ATMState {

	private ATMState hasCard;
	private ATMState noCard;
	private ATMState hasCorrectPin;
	private ATMState outOfMoney;

	private ATMState state;

	public Integer availableCash = 2000;
	public Boolean correctPinEntered = false;

	public ATMMachine() {
		hasCard = new HasCard(this);
		noCard = new NoCard(this);
		hasCorrectPin = new HasPin(this);
		outOfMoney = new NoCash(this);

		state = (availableCash > 0) ? noCard : outOfMoney;
	}

	public void setATMState(ATMState newState) { state = newState; }

	public void setCashInMachine(Integer newCash) {
		availableCash = newCash;
	}

	public void insertCard() {
		state.insertCard();
	}

	public void ejectCard() {
		state.ejectCard();
	}

	public void requestCash(Integer amount) {
		state.requestCash(amount);
	}

	public void enterPin(Integer newPin) {
		state.enterPin(newPin);
	}

	public ATMState getYesCardState() { return hasCard; }
	public ATMState getNoCardState() { return noCard; }
	public ATMState getHasPin() { return hasCorrectPin; }
	public ATMState getNoCashState() { return outOfMoney; }
}
