public with sharing class TaxHolidayVisitor implements Visitor {
	public TaxHolidayVisitor() {}

	public Decimal visit(Liquor item) {
		System.debug('Liquor Item: Price with Tax');
		return item.getPrice() * 1.10;
	}

	public Decimal visit(Tobacco item) {
		System.debug('Tobacco Item: Price with Tax');
		return item.getPrice() * 1.30;
	}

	public Decimal visit(Necessity item) {
		System.debug('Necessity Item: Price with Tax');
		return item.getPrice();
	}
}
