@isTest
private class ScrabbleTest {
	private static final Integer TILE_START = 7;
	static TestMethod void run_givenSingleton_shouldGetSharedState() {
		Singleton instance1 = Singleton.getInstance();
		Integer instance1HashCode = System.hashCode(instance1);
		System.debug(instance1HashCode);

		System.debug(instance1.getLetters());

		List<String> playerOneTiles = instance1.getTiles(TILE_START);
		System.debug('Player One Tiles: ' + playerOneTiles);

		System.debug('Remaining Letters' + instance1.getLetters());

		Singleton instance2 = Singleton.getInstance();
		Integer instance2HashCode = System.hashCode(instance2);
		System.assertEquals(instance1, instance2, 'Should actually be the same instance.');
		System.debug(instance2HashCode);

		System.debug(instance2.getLetters());
		List<String> playerTwoTiles = instance2.getTiles(TILE_START);
		System.debug('Player Two Tiles' + playerTwoTiles);

		System.debug('Remaining Letters' + instance2.getLetters());
	}
}
