public with sharing class VeggieHoagie extends Hoagie {
	private List<String> vegiesUsed = new List<String> { 'Lettuce', 'Tomatoes', 'Onions', 'Sweet Peppers' };
	private List<String> condimentsUsed = new List<String> { 'Oil', 'Vinegar' };

	protected override Boolean customerWantsMeat() { return false; }
	protected override Boolean customerWantsCheese() { return false; }

	protected override void addVegetables() {
		System.debug('Adding vegies: ' + String.join(vegiesUsed, ', '));
	}

	protected override void addCondiments() {
		System.debug('Adding condiments: ' + String.join(condimentsUsed, ', '));
	}

	protected override void addMeat() {}
	protected override void addCheese() {}
}
