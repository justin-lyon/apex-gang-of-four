public with sharing class Sheep implements Animal {
	public Sheep() {
		System.debug('Made a sheep.');
	}

	public Animal makeCopy() {
		System.debug('Making a sheep.');
		Sheep sheepObject = null;
		sheepObject = this.clone();
		return sheepObject;
	}

	public override String toString() {
		return 'Dolly is my hero, Baaaaaa.';
	}
}
