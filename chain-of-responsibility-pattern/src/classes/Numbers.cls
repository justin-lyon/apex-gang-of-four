public with sharing class Numbers {
	private Integer number1;
	private Integer number2;

	private String calculationWanted;

	public Numbers(Integer newNum1, Integer newNum2, String calcWanted) {
		this.number1 = newNum1;
		this.number2 = newNum2;
		this.calculationWanted = calcWanted;
	}

	public Integer getNumber1() { return number1; }
	public Integer getNumber2() { return number2; }
	public String getCalcWanted() { return calculationWanted; }
}
