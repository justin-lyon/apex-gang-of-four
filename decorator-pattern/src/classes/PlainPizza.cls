public with sharing class PlainPizza implements Pizza {

	public String getDescription() {
		return 'Thin dough';
	}

	public Decimal getCost() {
		return 4.0;
	}
}
