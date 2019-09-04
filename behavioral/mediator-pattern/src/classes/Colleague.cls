public abstract class Colleague {

	private Mediator mediator;
	private Integer colleagueCode;

	public Colleague(Mediator newMediator) {
		this.mediator = newMediator;
		mediator.addColleague(this);
	}

	public void saleOffer(String stock, Integer shares) {
		mediator.saleOffer(stock, shares, this.colleagueCode);
	}

	public void buyOffer(String stock, Integer shares) {
		mediator.buyOffer(stock, shares, this.colleagueCode);
	}

	public void setCollCode(Integer collCode) { this.colleagueCode = collCode; }
}
