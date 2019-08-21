public with sharing class Bird implements Animal {
	MoveLogic mover;
	public Bird(MoveLogic mover) {
		this.mover = mover;
	}

	public void howDoIMove() {
		mover.move();
	}
}
