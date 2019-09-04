public with sharing class StockObserver implements Observer {
	private Decimal ibmPrice;
	private Decimal aaplPrice;
	private Decimal googPrice;

	private static Integer observerIdTracker = 0;
	private Integer observerId;
	private Subject stockGrabber;

	public StockObserver(Subject stockGrabber) {
		this.stockGrabber = stockGrabber;
		this.observerId = ++observerIdTracker;
		System.debug('New Observer: ' + this.observerId);

		this.stockGrabber.register(this);
	}

	public void makeUpdate(Decimal ibmPrice, Decimal aaplPrice, Decimal googPrice) {
		this.ibmPrice = ibmPrice;
		this.aaplPrice = aaplPrice;
		this.googPrice = googPrice;

		printThePrices();
	}

	private void printThePrices() {
		System.debug('IBM: ' + ibmPrice);
		System.debug('AAPL: ' + aaplPrice);
		System.debug('GOOG: ' + googPrice);
	}
}
