public with sharing class TomatoSauce extends ToppingDecorator {
	public TomatoSauce(Pizza newPizza) {
		super(newPizza);

		System.debug('adding sauce');
	}

	public override String getDescription() {
		return tempPizza.getDescription() + ', Tomato Sauce';
	}

	public override Decimal getCost() {
		return tempPizza.getCost() + .35;
	}
}
