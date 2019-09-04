public with sharing class ItalianHoagie extends Hoagie {
	private List<String> meatUsed = new List<String> { 'Salami', 'Pepperoni', 'Capicola Ham' };
	private List<String> cheeseUsed = new List<String> { 'Provolone' };
	private List<String> vegiesUsed = new List<String> { 'Lettuce', 'Tomatoes', 'Onions', 'Sweet Peppers' };
	private List<String> condimentsUsed = new List<String> { 'Oil', 'Vinegar' };

	public override void addMeat() {
		System.debug('Adding meat: ' + String.join(meatUsed, ', '));
	}

	public override void addCheese() {
		System.debug('Adding cheese: ' + String.join(cheeseUsed, ', '));
	}

	public override void addVegetables() {
		System.debug('Adding vegies: ' + String.join(vegiesUsed, ', '));
	}

	public override void addCondiments() {
		System.debug('Adding condiments: ' + String.join(condimentsUsed, ', '));
	}
}
