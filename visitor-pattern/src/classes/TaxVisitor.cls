public with sharing class TaxVisitor implements Visitor {
	public TaxVisitor() {}

	public Decimal visit(Liquor item) {
		System.debug('Liquor Item: Price with Tax');
		return item.getPrice() * 1.18;
	}

	public Decimal visit(Tobacco item) {
		System.debug('Tobacco Item: Price with Tax');
		return item.getPrice() * 1.32;
	}

	public Decimal visit(Necessity item) {
		System.debug('Necessity Item: Price with Tax');
		return item.getPrice();
	}
}
