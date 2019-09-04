public with sharing class BankAccountFacade {

	private Integer accountNumber;
	private Integer securityCode;

	private AccountNumberCheck acctChecker;
	private SecurityCodeCheck codeChecker;
	private FundsCheck fundChecker;

	WelcomeToBank bankWelcome;

	public BankAccountFacade(Integer newAcctNum, Integer newCode) {
		this.accountNumber = newAcctNum;
		this.securityCode = newCode;

		bankWelcome = new WelcomeToBank();

		acctChecker = new AccountNumberCheck();
		codeChecker = new SecurityCodeCheck();
		fundChecker = new FundsCheck();
	}

	public Integer getAccountNumber() { return accountNumber; }
	public Integer getSecuritCode() { return securityCode; }

	public void withdrawCash(Decimal toWithdraw) {
		if (acctChecker.accountActive(getAccountNumber())
			&& codeChecker.isCodeCorrect(getSecuritCode())
			&& fundChecker.haveEnoughMoney(toWithdraw)) {

			System.debug('Transaction Complete.');
		} else {
			System.debug('Transaction Failed.');
		}
	}

	public void depositCash(Decimal toDeposit) {
		if (acctChecker.accountActive(getAccountNumber())
			&& codeChecker.isCodeCorrect(getSecuritCode())) {

			fundChecker.makeDeposit(toDeposit);
			System.debug('Transaction Complete.');
		} else {
			System.debug('Transaction Failed.');
		}
	}
}
