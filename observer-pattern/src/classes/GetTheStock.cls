public with sharing class GetTheStock implements Queueable {
	private String stock;
	private Decimal price;
	private Subject stockGrabber;
	private Integer startTime;

	public GetTheStock(Subject stockGrabber, Integer newStartTime, String newStock, Decimal newPrice) {
		this.stockGrabber = stockGrabber;
		this.stock = newStock;
		this.price = newPrice;

		// (opt) set starttime
		// this.startTime = newStartTime;
	}

	public void execute(QueueableContext ctx) {
		for (Integer i = 1; i < 20; i++) {
			wait();
			Decimal randNum = (Math.random() * (.06)) - .03;
			price = price + randNum;

			if (stock == 'IBM') ((StockGrabber)stockGrabber).setIBMPrice(price);
			if (stock == 'AAPL') ((StockGrabber)stockGrabber).setAAPLPrice(price);
			if (stock == 'GOOG') ((StockGrabber)stockGrabber).setGOOGPrice(price);

			System.debug(stock + ': ' + price);
		}
	}

	private void wait() {
		Long start = System.now().getTime();
		while(System.now().getTime() < start + 1000) {}
	}
}
