@isTest
private class AnimalTest {
	static TestMethod void test_Animals() {
		List<Animal> animals = new List<Animal>();
		animals.add(new Person(new Walk()));
		animals.add(new Bird(new Fly()));
		animals.add(new Fish(new Swim()));

		for (Animal a : animals) {
			a.howDoIMove();
		}
	}
}
