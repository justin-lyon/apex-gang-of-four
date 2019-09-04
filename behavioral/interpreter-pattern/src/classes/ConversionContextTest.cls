@isTest
private class ConversionContextTest {
	static TestMethod void TestConversions() {
		String input = '3 gallons to tablespoons';
		ConversionContext ctx = new ConversionContext(input);
		String fromConversion = ctx.getFromConversion();
		String toConversion = ctx.getToConversion();
		Decimal quantity = ctx.getQuantity();

		Expression exp = (Expression) Type.forName(fromConversion).newInstance();
		Decimal result = Decimal.valueOf(exp.call(toConversion, quantity));

		System.debug(ctx.getResponse() + ' ' + result);
	}
}
