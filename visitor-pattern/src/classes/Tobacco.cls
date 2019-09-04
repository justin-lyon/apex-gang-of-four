public with sharing class Tobacco implements Visitable {

	private Decimal price;

	public Tobacco(Decimal newPrice) {
		this.price = newPrice;
	}

	public Decimal accept(Visitor visitor) {
		return visitor.visit(this);
	}

	public Decimal getPrice() { return this.price; }
}
