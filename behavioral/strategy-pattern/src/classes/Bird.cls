public with sharing class Bird extends Animal {
	public Bird() {
		super();
		setSound('Tweet');
		flyingType = new ItFlys();
	}
}
