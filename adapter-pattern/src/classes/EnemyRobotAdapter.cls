public with sharing class EnemyRobotAdapter implements EnemyAttacker {
	EnemyRobot robot;

	public EnemyRobotAdapter(EnemyRobot newRobot) {
		this.robot = newRobot;
	}

	public void fireWeapon() {
		robot.smashWithHands();
	}

	public void driveForward() {
		robot.walkForward();
	}

	public void assignDriver(String driverName) {
		robot.reactToHuman(driverName);
	}
}
