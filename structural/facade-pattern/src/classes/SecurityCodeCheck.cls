public with sharing class SecurityCodeCheck {

	private Integer securityCode = 1234;
	public Integer getSecurityCode() { return securityCode; }

	public Boolean isCodeCorrect(Integer code) {
		return code == securityCode;
	}
}
