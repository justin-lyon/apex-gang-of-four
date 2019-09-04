public with sharing class AddNumbers implements Chain {
	private Chain nextChain;

	public void setNextChain(Chain nextChain) {
		this.nextChain = nextChain;
	}

	public void calculate(Numbers request) {
		if (request.getCalcWanted() == 'add') {
			System.debug(request.getNumber1() + ' + ' + request.getNumber2() + ' = ' + request.getNumber1() + request.getNumber2());
		} else {
			nextChain.calculate(request);
		}
	}
}
