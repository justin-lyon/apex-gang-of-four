@isTest
private class BankAccountFacadeTest {
	static TestMethod void test_BankAccountFacade() {
		BankAccountFacade facade = new BankAccountFacade(12345678, 1234);
		facade.withdrawCash(50.00);
		facade.withdrawCash(990.00);
		facade.depositCash(1000.00);
		facade.withdrawCash(990.00);
	}
}
