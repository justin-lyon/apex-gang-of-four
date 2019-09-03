public with sharing class ConversionContext {

	private String conversionQues = '';
	private String conversionRes = '';
	private String fromConversion = '';
	private String toConversion = '';
	private Decimal quantity;

	List<String> partsOfQues;

	public ConversionContext(String input) {
		this.conversionQues = input;
		partsOfQues = getInput().split(' ');
		fromConversion = getCapitalized(partsOfQues[1]);
		toConversion = getLowerCase(partsOfQues[3]);
		quantity = Decimal.valueOf(partsOfQues[0]);
		conversionRes = partsOfQues[0] + ' ' + partsOfQues[1] + ' equals ';
	}

	public String getInput() { return conversionQues; }
	public String getFromConversion() { return fromConversion; }
	public String getToConversion() { return toConversion; }
	public String getResponse() { return conversionRes; }
	public Decimal getQuantity() { return quantity; }

	public String getLowerCase(String wordToLowercase) {
		return wordToLowercase.toLowerCase();
	}

	public String getCapitalized(String wordToCapitalize) {
		wordToCapitalize = wordToCapitalize.toLowerCase().capitalize();
		Integer length = wordToCapitalize.length();
		if (!wordToCapitalize.endsWith('s')) {
			wordToCapitalize += 's';
		}
		return wordToCapitalize;
	}
}
