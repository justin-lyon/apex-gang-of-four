public with sharing class Random {
	public Integer nextInt(Integer range) {
		return Integer.valueOf(Math.random() * range);
	}
}
