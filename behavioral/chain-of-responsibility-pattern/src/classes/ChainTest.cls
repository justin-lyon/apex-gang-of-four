@isTest
private class ChainTest {
	static TestMethod void TestChain() {
		Chain addChain = new AddNumbers();
		Chain subChain = new SubtractNumbers();
		Chain multChain = new MultNumbers();
		Chain divChain = new DivideNumbers();

		addChain.setNextChain(subChain);
		subChain.setNextChain(multChain);
		multChain.setNextChain(divChain);

		Numbers addRequest = new Numbers(4, 2, 'add');
		addChain.calculate(addRequest);

		Numbers divideRequest = new Numbers(4, 2, 'div');
		addChain.calculate(divideRequest);
	}
}
