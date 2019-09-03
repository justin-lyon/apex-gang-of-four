public interface ATMState {
	void insertCard();
	void ejectCard();
	void enterPin(Integer newPin);
	void requestCash(Integer amount);
}
