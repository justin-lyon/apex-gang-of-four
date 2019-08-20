public with sharing class Mozarella extends ToppingDecorator {
	public Mozarella(Pizza newPizza) {
		super(newPizza);

		System.debug('adding dough');
		System.debug('adding moz');
	}

	public override String getDescription() {
		return tempPizza.getDescription() + ', Mozarella';
	}

	public override Decimal getCost() {
		return tempPizza.getCost() + .50;
	}
}
