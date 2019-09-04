public with sharing class Quarts extends Expression {

	public override String gallons(Decimal quantity) {
		return String.valueOf(quantity / 4);
	}

	public override String quarts(Decimal quantity) {
		return String.valueOf(quantity);
	}

	public override String pints(Decimal quantity) {
		return String.valueOf(quantity * 2);
	}

	public override String cups(Decimal quantity) {
		return String.valueOf(quantity * 4);
	}

	public override String tablespoons(Decimal quantity) {
		return String.valueOf(quantity * 64);
	}
}
