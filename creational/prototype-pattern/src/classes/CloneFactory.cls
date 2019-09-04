public with sharing class CloneFactory {

	public Animal getClone(Animal animalSample) {
		return animalSample.makeCopy();
	}
}
