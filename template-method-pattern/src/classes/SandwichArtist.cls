@isTest
private class SandwichArtist {
	static TestMethod void makeSandwiches() {
		List<Hoagie> hoagies = new List<Hoagie>();
		hoagies.add(new ItalianHoagie());
		hoagies.add(new VeggieHoagie());

		for (Hoagie h : hoagies) {
			h.makeSandwich();
		}
	}
}
