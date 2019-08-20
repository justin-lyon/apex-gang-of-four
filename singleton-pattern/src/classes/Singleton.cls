public with sharing class Singleton {
	private static Singleton firstInstance = null;

	List<String> letters = new List<String> { 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a', 'a',
		'b', 'b', 'c', 'c', 'd', 'd', 'd', 'd', 'e', 'e', 'e', 'e', 'e',
		'e', 'e', 'e', 'e', 'e', 'e', 'e', 'f', 'f', 'g', 'g', 'g', 'h',
		'h', 'i', 'i', 'i', 'i', 'i', 'i', 'i', 'i', 'i', 'j', 'k', 'l',
		'l', 'l', 'l', 'm', 'm', 'n', 'n', 'n', 'n', 'n', 'n', 'o', 'o',
		'o', 'o', 'o', 'o', 'o', 'o', 'p', 'p', 'q', 'r', 'r', 'r', 'r',
		'r', 'r', 's', 's', 's', 's', 't', 't', 't', 't', 't', 't', 'u',
		'u', 'u', 'u', 'v', 'v', 'w', 'w', 'x', 'y', 'y', 'z' };

	private static Boolean firstThread = true;

	private Singleton() {
		this.letters = shuffleList(letters);
	}

	public static Singleton getInstance() {
		if (firstInstance == null) {
			firstInstance = new Singleton();
		}
		return firstInstance;
	}

	public List<String> getLetters() {
		return firstInstance.letters;
	}

	public List<String> getTiles(Integer howManyTiles) {
		List<String> tiles = new List<String>();
		for (Integer i = 0; i <= howManyTiles; i++) {
			tiles.add(firstInstance.letters.remove(0));
		}
		return tiles;
	}

	private List<String> shuffleList(List<String> collection) {
		List<String> shuffled = new List<String>();
		for (Integer i = 0; i < collection.size(); i++) {
			Integer currentLength = collection.size();
			Integer randomIndex = generateRandomNumber(currentLength);
			shuffled.add(collection.remove(randomIndex));
		}
		return shuffled;
	}

	private Integer generateRandomNumber(Integer length) {
		return Integer.valueOf(Math.random() * length);
	}
}
