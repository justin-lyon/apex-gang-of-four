public abstract class EnemyShip {
	private String name;

	protected ESWeapon weapon;
	protected ESEngine engine;

	public String getName() { return name; }
	public void setName(String newName) { name = newName; }

	public abstract void makeShip();

	public void followHeroShip() {
		System.debug(getName() + ' is following the hero at ' + engine);
	}

	public void displayEnemyShip() {
		System.debug(getName() + ' is on the screen.');
	}

	public void enemyShipShoots() {
		System.debug(getName() + ' attacks and does ' + weapon);
	}

	public override String toString() {
		String infoOnShip = 'The ' + name + 'has a top speed of ' + engine + ' and an attack power of ' + weapon;
		return infoOnShip;
	}
}
