public with sharing class Fish implements Animal {
	MoveLogic mover;
	public Fish(MoveLogic mover) {
		this.mover = mover;
	}

	public void howDoIMove() {
		mover.move();
	}
}
