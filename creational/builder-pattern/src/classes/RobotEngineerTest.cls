@isTest
private class RobotEngineerTest {
	static TestMethod void getRobot_givenBuilder_shouldGetNewRobot() {
		RobotEngineer engineer = new RobotEngineer(new OldRobotBuilder());

		Test.startTest();

			engineer.makeRobot();
			RobotPlan oldRobot = engineer.getRobot();

		Test.stopTest();

		System.assert(oldRobot instanceof Robot, 'oldRobot should be of type Robot.');
	}
}
