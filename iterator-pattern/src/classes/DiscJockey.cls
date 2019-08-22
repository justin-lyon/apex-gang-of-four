public with sharing class DiscJockey {

	SongIterator iter70Songs;
	SongIterator iter80Songs;
	SongIterator iter90Songs;

	public DiscJockey(SongIterator new70Songs, SongIterator new80Songs, SongIterator new90Songs) {
		iter70Songs = new70Songs;
		iter80Songs = new80Songs;
		iter90Songs = new90Songs;
	}

	public void showTheSongs() {
		Iterator<SongInfo> songs70s = iter70Songs.createIterator();
		printSongs(songs70s);
		Iterator<SongInfo> songs80s = iter80Songs.createIterator();
		printSongs(songs80s);
		Iterator<SongInfo> songs90s = iter90Songs.createIterator();
		printSongs(songs90s);
	}

	public void printSongs(Iterator<SongInfo> iterable) {
		while(iterable.hasNext()) {
			SongInfo song = iterable.next();
			System.debug(song.getSongName());
			System.debug(song.getBandName());
			System.debug(song.getYearReleased());
		}
	}
}
