public with sharing class Dog extends Animal {

	public void digHole() {
		System.debug('Dug a hole.');
	}

	public Dog() {
		super();
		setSound('Bark');
		flyingType = new CantFly();
	}
}
