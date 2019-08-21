public with sharing class FundsCheck {

	private Decimal cashInAccount = 1000.00;
	public Decimal getCashInAccount() { return cashInAccount; }

	public void decreaseCashInAccount(Decimal withdrawn) {
		cashInAccount -= withdrawn;
	}

	public void increaseCashInAccount(Decimal deposited) {
		cashInAccount += deposited;
	}

	public Boolean haveEnoughMoney(Decimal toWithdraw) {
		Boolean hasEnough = toWithdraw <= getCashInAccount();

		if(hasEnough) {
			decreaseCashInAccount(toWithdraw);
			System.debug('Withdrawal Complete');
		} else {
			System.debug('Error: You dont have enough.');
			System.debug('Current Balance: ' + getCashInAccount());
		}

		return hasEnough;
	}

	public void makeDeposit(Decimal toDeposit) {
		increaseCashInAccount(toDeposit);
		System.debug('Deposit Complete: Current Balance is ' + getCashInAccount());
	}
}
