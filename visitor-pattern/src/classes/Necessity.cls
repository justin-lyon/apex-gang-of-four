public with sharing class Necessity implements Visitable {

	private Decimal price;

	public Necessity(Decimal newPrice) {
		this.price = newPrice;
	}

	public Decimal accept(Visitor visitor) {
		return visitor.visit(this);
	}

	public Decimal getPrice() { return this.price; }
}
