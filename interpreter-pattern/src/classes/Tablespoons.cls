public with sharing class Tablespoons extends Expression {

	public override String gallons(Decimal quantity) {
		return String.valueOf(quantity / 256);
	}

	public override String quarts(Decimal quantity) {
		return String.valueOf(quantity / 64);
	}

	public override String pints(Decimal quantity) {
		return String.valueOf(quantity / 32);
	}

	public override String cups(Decimal quantity) {
		return String.valueOf(quantity / 16);
	}

	public override String tablespoons(Decimal quantity) {
		return String.valueOf(quantity);
	}
}
