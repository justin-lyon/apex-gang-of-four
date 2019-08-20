@isTest
private class CloneFactoryTest {
	static TestMethod void makeCopy_givenSheep_shouldGetNewSheep() {
		Animal sheep = new Sheep();
		CloneFactory factory = new CloneFactory();

		Test.startTest();

			Animal sheepClone = factory.getClone(sheep);

		Test.stopTest();

		System.assertEquals(sheep.toString(), sheepClone.toString());

		Integer sheepHash = System.hashCode(sheep);
		Integer sheepCloneHash = System.hashCode(sheepClone);
		System.assertNotEquals(sheepHash, sheepCloneHash, 'Should be different instances');
	}
}
