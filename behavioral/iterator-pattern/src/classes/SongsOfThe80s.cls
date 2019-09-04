public with sharing class SongsOfThe80s implements SongIterator {

	private List<SongInfo> bestSongs;
	private Integer index;

	public SongsOfThe80s() {
		bestSongs = new List<SongInfo>();
		index = 0;

		addSong('Roam', 'B52s', 1989);
		addSong('Cruel Summer', 'Bananarama', 1984);
		addSong('Head Over Heels', 'Tears for Fears', 1985);
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
