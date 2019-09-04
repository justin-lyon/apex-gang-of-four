@isTest
private class CounterStrike {
	private static final List<String> WEAPONS;
	private static final List<PlayerFactory.PlayerType> TYPES;

	static {
		WEAPONS = new List<String> {
			'AK-47',
			'Maverick',
			'Knife',
			'Desert Eagle'};

		TYPES = PlayerFactory.PlayerType.values();
	}

	static TestMethod void makePlayers() {
		PlayerFactory factory = new PlayerFactory();
		for (Integer i = 0; i < 100; i++) {
			Player p = factory.getPlayer(getRandomType());
			p.assignWeapon(getRandomWeapon());
			p.mission();
			// NOTE: `p` is not stored in memory because flyweight is still passing by reference.
			// Use it, abuse it, and throw it away as you move on.
		}
	}

	private static String getRandomWeapon() {
		Integer randIndex = getRandomInt(WEAPONS.size() - 1);
		return WEAPONS[randIndex];
	}

	private static PlayerFactory.PlayerType getRandomType() {
		Integer randIndex = getRandomInt(TYPES.size() - 1);
		return TYPES[randIndex];
	}

	private static Integer getRandomInt(Integer max) {
		return Integer.valueOf(Math.random() * max);
	}
}
