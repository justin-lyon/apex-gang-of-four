public with sharing class SongsOfThe90s implements SongIterator {

	private Map<Integer, SongInfo> bestSongs;
	private Integer key;
	private Integer index;

	public SongsOfThe90s() {
		bestSongs = new Map<Integer,SongInfo>();
		key = 0;
		index = 0;

		addSong('Losing My Religion', 'REM', 1991);
		addSong('Creep', 'Radiohead', 1993);
		addSong('Walk on the Ocean', 'Toad the Wet Sprocket', 1991);
	}

	public void addSong(String songName, String bandName, Integer yearReleased) {
		bestSongs.put(key++, new SongInfo(songName, bandName, yearReleased));
	}

	public List<SongInfo> getBestSongs() { return bestSongs.values(); }

	// Iterator Pattern
	public Iterator<SongInfo> createIterator() {
		return bestSongs.values().iterator();
	}

	// *****
	// Apex Iterator Interface
	public Boolean hasNext() {
		return index < bestSongs.size();
	}

	public SongInfo next() {
		if (index == bestSongs.size()) return null;

		return bestSongs.get(index++);
	}
}
