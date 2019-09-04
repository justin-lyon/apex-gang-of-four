@isTest
private class AnimalTest {
	static TestMethod void fly_givenDog_shouldGetCantFly() {
		Animal dog = new Dog();

		Test.startTest();

			String cantFly = dog.tryToFly();

		Test.stopTest();

		System.assertEquals('I can\'t fly', cantfly);
	}

	static TestMethod void fly_givenBird_shouldGetFlying() {
		Animal bird = new Bird();

		Test.startTest();

			String canFly = bird.tryToFly();

		Test.stopTest();

		System.assertEquals('I\'m flying!', canFly);
	}
}
