public with sharing class Person implements Animal {
	MoveLogic mover;
	public Person(MoveLogic mover) {
		this.mover = mover;
	}

	public void howDoIMove() {
		mover.move();
	}
}
