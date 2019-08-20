public with sharing class PizzaMaker {
	public PizzaMaker() {}

	public static void main() {
		Pizza basicPizza = new TomatoSauce(new Mozarella(new PlainPizza()));
		System.debug('Ingredients: ' + basicPizza.getDescription()); // => Ingredients: Thin dough, Mozarella, Tomato Sauce
		System.debug('Cost: ' + basicPizza.getCost()); // => Cost: 4.85
	}
}
