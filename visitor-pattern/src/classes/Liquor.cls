public with sharing class Liquor implements Visitable {

	private Decimal price;

	public Liquor(Decimal newPrice) {
		this.price = newPrice;
	}

	public Decimal accept(Visitor visitor) {
		return visitor.visit(this);
	}

	public Decimal getPrice() { return this.price; }
}
