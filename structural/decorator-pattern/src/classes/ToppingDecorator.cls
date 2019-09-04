public abstract class ToppingDecorator implements Pizza {

	protected Pizza tempPizza;

	public ToppingDecorator(Pizza newPizza) {
		this.tempPizza = newPizza;
	}

	public virtual String getDescription() {
		return tempPizza.getDescription();
	}

	public virtual Decimal getCost() {
		return tempPizza.getCost();
	}
}
