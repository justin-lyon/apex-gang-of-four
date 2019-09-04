public interface Mediator {
	void saleOffer(String stock, Integer shares, Integer collCode);
	void buyOffer(String stock, Integer shares, Integer collCode);
	void addColleague(Colleague colleague);
}
