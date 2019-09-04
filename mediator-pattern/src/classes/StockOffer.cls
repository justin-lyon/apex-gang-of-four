public with sharing class StockOffer {

	private Integer stockShares = 0;
	private String stockSymbol = '';
	private Integer colleagueCode = 0;

	public StockOffer(Integer numOfShares, String stock, Integer collCode) {
		this.stockShares = numOfShares;
		this.stockSymbol = stock;
		this.colleagueCode = collCode;
	}

	public Integer getStockShares() { return stockShares; }
	public String getStockSymbol() { return stockSymbol; }
	public Integer getCollCode() { return colleagueCode; }
}
