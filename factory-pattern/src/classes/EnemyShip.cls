public abstract class EnemyShip {
	private String name;
	private Decimal speed;
	private Decimal directionX;
	private Decimal directionY;
	private Decimal amtDamage;

	public String getName() { return name; }
	public void setName(String newName) { name = newName; }

	public Decimal getDamage() { return amtDamage; }
	public void setDamage(Decimal newDamage) { amtDamage = newDamage; }

	public void followHeroShip() {
		System.debug(getName() + ' is following the hero.');
	}

	public void displayEnemyShip() {
		System.debug(getName() + ' is on the screen.');
	}

	public void enemyShipShoots() {
		System.debug(getName() + ' attacks and does ' + getDamage() + ' damage to hero.');
	}
}
