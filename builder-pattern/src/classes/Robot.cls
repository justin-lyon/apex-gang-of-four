public with sharing class Robot  implements RobotPlan {
	private String robotHead;
	private String robotTorso;
	private String robotArms;
	private String robotLegs;

	public void setRobotHead(String newHead) { robotHead = newHead; }
	public String getRobotHead() { return robotHead; }

	public void setRobotTorso(String newTorso) { robotTorso = newTorso; }
	public String getRobotTorso() { return robotTorso; }

	public void setRobotArms(String newArms) { robotArms = newArms; }
	public String getRobotArms() { return robotArms; }

	public void setRobotLegs(String newLegs) { robotLegs = newLegs; }
	public String getRobotLegs() { return robotLegs; }
}
