public with sharing class DiscJockey {

	SongComponent songList;

	public DiscJockey(SongComponent newSongList) {
		songList = newSongList;
	}

	public void getSongList() {
		songList.displaySongInfo();
	}
}
