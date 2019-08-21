public with sharing class AccountNumberCheck {
	private Integer accountNumber = 12345678;
	public Integer getAccountNumber() { return accountNumber; }

	public Boolean accountActive(Integer acctNumToCheck) {
		return acctNumToCheck == accountNumber;
	}
}
