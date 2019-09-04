public with sharing class PlayerFactory {

	public ENUM PlayerType { TERRORIST, COUNTERTERRORIST }

	// Player Cache
	private Map<PlayerType, Player> playersByType = new Map<PlayerType, Player>();

	// Get Player lazy loads player objects by type.
	public Player getPlayer(PlayerType type) {
		Player p = null;
		if (playersByType.containsKey(type)) {
			p = playersByType.get(type);
		} else if (type == PlayerType.TERRORIST) {
			p = new Terrorist();
			playersByType.put(type, p);
		} else if (type == PlayerType.COUNTERTERRORIST) {
			p = new CounterTerrorist();
			playersByType.put(type, p);
		}
		return p;
	}
}
