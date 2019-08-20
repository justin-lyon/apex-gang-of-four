public with sharing class StockGrabber implements Subject {
	private List<Observer> observers;
	private Decimal ibmPrice;
	private Decimal aaplPrice;
	private Decimal googPrice;

	public StockGrabber() {
		observers = new List<Observer>();
	}

	public void register(Observer newObserver) {
		observers.add(newObserver);
	}

	public void unregister(Observer deleteObserver) {
		Integer observerIndex = observers.indexOf(deleteObserver);
		observers.remove(observerIndex);
		System.debug('Observer deleted: ' + deleteObserver);
	}

	public void notifyObservers() {
		for(Observer obs : observers) {
			obs.makeUpdate(ibmPrice, aaplPrice, googPrice);
		}
	}

	public void setIBMPrice(Decimal newPrice) {
		this.ibmPrice = newPrice;
		notifyObservers();
	}

	public void setAAPLPrice(Decimal newPrice) {
		this.aaplPrice = newPrice;
		notifyObservers();
	}

	public void setGOOGPrice(Decimal newPrice) {
		this.googPrice = newPrice;
		notifyObservers();
	}
}
