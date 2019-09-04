public abstract class Hoagie {

	public void makeSandwich() {
		cutBun();

		if(customerWantsMeat()) {
			addMeat();
		}

		if(customerWantsCheese()) {
			addCheese();
		}

		if(customerWantsVegetables()) {
			addVegetables();
		}

		if(customerWantsCondiments()) {
			addCondiments();
		}

		wrapTheHoagie();
	}

	// Must be implemented by the child
	protected abstract void addMeat();
	protected abstract void addCheese();
	protected abstract void addVegetables();
	protected abstract void addCondiments();

	// Optionally implemented by the child - aka "Hooks"
	protected virtual Boolean customerWantsMeat() { return true; }
	protected virtual Boolean customerWantsCheese() { return true; }
	protected virtual Boolean customerWantsVegetables() { return true; }
	protected virtual Boolean customerWantsCondiments() { return true; }

	private void cutBun() {
		System.debug('Bun is cut.');
	}

	private void wrapTheHoagie() {
		System.debug('Hoagie is wrapped.');
	}
}
