public with sharing class SongsOfThe70s implements SongIterator {
	private List<SongInfo> bestSongs;
	private Integer index;

	public SongsOfThe70s() {
		bestSongs = new List<SongInfo>();
		index = 0;

		addSong('Imagine', 'John Lennon', 1971);
		addSong('American Pie', 'Don Mclean', 1971);
		addSong('I Will Survive', 'Gloria Gaynor', 1979);
	}

	public void addSong(String songName, String bandName, Integer yearReleased) {
		bestSongs.add(new SongInfo(songName, bandName, yearReleased));
	}

	public List<SongInfo> getBestSongs() { return bestSongs; }

	// Iterator Pattern
	public Iterator<SongInfo> createIterator() {
		return bestSongs.iterator();
	}

	// *****
	// Apex Iterator Interface
	public Boolean hasNext() {
		return index < bestSongs.size();
	}

	public SongInfo next() {
		if (index == bestSongs.size()) return null;

		return bestSongs[index++];
	}
}
