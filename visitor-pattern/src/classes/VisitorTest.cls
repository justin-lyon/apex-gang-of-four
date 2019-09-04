@isTest
private class VisitorTest {
	static TestMethod void TestTaxCalculations() {
		TaxVisitor regularTaxes = new TaxVisitor();
		TaxHolidayVisitor holidayTaxes = new TaxHolidayVisitor();

		Necessity milk = new Necessity(3.47);
		Liquor vodka = new Liquor(11.99);
		Tobacco cigars = new Tobacco(19.99);

		List<Visitable> items = new List<Visitable>();
		items.add(milk);
		items.add(vodka);
		items.add(cigars);

		System.debug('Regular Taxes');
		for (Visitable item : items) {
			System.debug(item.accept(regularTaxes));
		}

		System.debug('Holiday Taxes');
		for (Visitable item : items) {
			System.debug(item.accept(holidayTaxes));
		}
	}
}
