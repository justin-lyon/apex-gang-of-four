public with sharing class GrabStocks {

	private static final Decimal ibmPrice = 197.00;
	private static final Decimal aaplPrice = 677.60;
	private static final Decimal googPrice = 676.40;

	public static void main() {
		StockGrabber stockGrabber = new StockGrabber();
		StockObserver observer1 = new StockObserver(stockGrabber);

		stockGrabber.setIBMPrice(ibmPrice); // => 197.00, null, null
		stockGrabber.setAAPLPrice(aaplPrice); // => 197.00, 677.60, null
		stockGrabber.setGOOGPrice(googPrice); // => 197.00, 677.60, 676.40

		StockObserver observer2 = new StockObserver(stockGrabber);

		stockGrabber.setIBMPrice(ibmPrice);
		stockGrabber.setAAPLPrice(aaplPrice);
		stockGrabber.setGOOGPrice(googPrice);

		stockGrabber.unregister(observer2);

		stockGrabber.setIBMPrice(ibmPrice);
		stockGrabber.setAAPLPrice(aaplPrice);
		stockGrabber.setGOOGPrice(googPrice);

		// Sample "Thread" using Apex Queueables.
		// Queueable ibmGetter = new GetTheStock(stockGrabber, 1, 'IBM', ibmPrice);
		// Queueable aaplGetter = new GetTheStock(stockGrabber, 1, 'AAPL', aaplPrice);
		// Queueable googGetter = new GetTheStock(stockGrabber, 1, 'GOOG', googPrice);

		// System.enqueueJob(ibmGetter);
		// System.enqueueJob(aaplGetter);
		// System.enqueueJob(googGetter);
	}
}
