public with sharing class StockMediator implements Mediator {

	private List<Colleague> colleagues;
	private List<StockOffer> stockBuyOffers;
	private List<StockOffer> stockSaleOffers;

	private Integer colleagueCodes = 0;

	public StockMediator() {
		this.colleagues = new List<Colleague>();
		this.stockBuyOffers = new List<StockOffer>();
		this.stockSaleOffers = new List<StockOffer>();
	}

	public void addColleague(Colleague newColleague) {
		colleagues.add(newColleague);
		colleagueCodes++;
		newColleague.setCollCode(colleagueCodes);
	}

	public void saleOffer(String stock, Integer shares, Integer collCode) {
		Boolean stockSold = false;
		for (StockOffer offer : stockBuyOffers) {
			if (offer.getStockSymbol() == stock && offer.getStockShares() == shares) {
				System.debug(shares + ' shares of ' + stock + ' sold to colleague code ' + offer.getCollCode());
				Integer offerIndex = stockBuyOffers.indexOf(offer);
				stockBuyOffers.remove(offerIndex);
				stockSold = true;
			}
			if (stockSold) break;
		}
		if (!stockSold) {
			System.debug(shares + ' shares of ' + stock + ' added to inventory.');
			StockOffer newOffering = new StockOffer(shares, stock, collCode);
			stockSaleOffers.add(newOffering);
		}
	}

	public void buyOffer(String stock, Integer shares, Integer collCode) {
		Boolean stockBought = false;
		for (StockOffer offer : stockSaleOffers) {
			if (offer.getStockSymbol() == stock && offer.getStockShares() == shares) {
				System.debug(shares + ' shares of ' + stock + ' bought by colleague code ' + collCode);
				Integer offerIndex = stockSaleOffers.indexOf(offer);
				stockSaleOffers.remove(offerIndex);
				stockBought = true;
			}
			if (stockBought) break;
		}

		if (!stockBought) {
			System.debug(shares + ' shares of ' + stock + 'added to inventory.');
			StockOffer newOffering = new StockOffer(shares, stock, collCode);
			stockBuyOffers.add(newOffering);
		}
	}

	public void getStockOfferings() {
		System.debug('Stocks for sale:');
		for (StockOffer offer : stockSaleOffers) {
			System.debug(offer.getStockShares() + ' of ' + offer.getStockSymbol());
		}
		System.debug('Stock buy offers: ');
		for (StockOffer offer : stockBuyOffers) {
			System.debug(offer.getStockShares() + ' of ' + offer.getStockSymbol());
		}
	}
}
