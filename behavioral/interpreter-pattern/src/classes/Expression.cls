public abstract class Expression {
	public abstract String gallons(Decimal quantity);
	public abstract String quarts(Decimal quantity);
	public abstract String pints(Decimal quantity);
	public abstract String cups(Decimal quantity);
	public abstract String tablespoons(Decimal quantity);

	public String call(String action, Decimal quantity) {
		switch on action {
			when 'gallons' {
				return this.gallons(quantity);
			}

			when 'quarts' {
				return this.quarts(quantity);
			}

			when 'pints' {
				return this.pints(quantity);
			}

			when 'cups' {
				return this.cups(quantity);
			}

			when 'tablespoons' {
				return this.tablespoons(quantity);
			}

			when else {
				throw new MalphormedExpressionException('Invalid Action Invokaction.');
			}
		}
	}

	public class MalphormedExpressionException extends Exception {}
}
