@isTest
private class SongListGenerator {
	static TestMethod void playMusic() {
		// Top Level grouping of Song Components.
		SongComponent allMusic = new SongGroup('Song List', 'All available songs');

		// Intermediate level of Song Components by Genre
		SongComponent industrialMusic = new SongGroup(
			'Industrial',
			'is a style of experimental music that draws on transgressive and provocative themes');
		SongComponent heavyMetalMusic = new SongGroup(
			'Heavy Metal',
			'is a genre of rock that developed in the late 60s, largely in the UK and US');
		SongComponent dubstepMusic = new SongGroup(
			'Dubsteb',
			'is a genre of electronic dance music that originated in South London');

		// Add Base Genres to top level grouping
		allMusic.add(industrialMusic);
		allMusic.add(heavyMetalMusic);

		// Individual songs grouped under Industrial Genre
		industrialMusic.add(new Song('Head Like a Hole', 'NIN', 1990));
		industrialMusic.add(new Song('Headhunter', 'Front 242', 1988));

		// Classify dubstep Genre as a Sub-genre of Industrial
		industrialMusic.add(dubstepMusic);

		// Individual songs under the Dubstep genre
		dubstepMusic.add(new Song('Centipede', 'Knife Party', 2012));
		dubstepMusic.add(new Song('Tetris', 'Doctor P', 2011));

		// Individual songs of the Heavy Metal Genre
		heavyMetalMusic.add(new Song('War Pigs', 'Black Sabath', 1970));
		heavyMetalMusic.add(new Song('Ace of Spades', 'Motorhead', 1980));

		// Give the list to the DJ to play.
		DiscJockey crazyLarry = new DiscJockey(allMusic);
		crazyLarry.getSongList();
	}
}
