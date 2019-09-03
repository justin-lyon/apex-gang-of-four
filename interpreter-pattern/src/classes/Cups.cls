public with sharing class Cups extends Expression {

	public override String gallons(Decimal quantity) {
		return String.valueOf(quantity / 16);
	}

	public override String quarts(Decimal quantity) {
		return String.valueOf(quantity / 4);
	}

	public override String pints(Decimal quantity) {
		return String.valueOf(quantity * 2);
	}

	public override String cups(Decimal quantity) {
		return String.valueOf(quantity);
	}

	public override String tablespoons(Decimal quantity) {
		return String.valueOf(quantity * 16);
	}
}
