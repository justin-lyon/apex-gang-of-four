public with sharing class Pints extends Expression {

	public override String gallons(Decimal quantity) {
		return String.valueOf(quantity / 8);
	}

	public override String quarts(Decimal quantity) {
		return String.valueOf(quantity / 2);
	}

	public override String pints(Decimal quantity) {
		return String.valueOf(quantity);
	}

	public override String cups(Decimal quantity) {
		return String.valueOf(quantity * 2);
	}

	public override String tablespoons(Decimal quantity) {
		return String.valueOf(quantity * 32);
	}
}
