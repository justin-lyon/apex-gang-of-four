public with sharing class Song extends SongComponent {

	private String songName;
	private String bandName;
	private Integer releaseYear;

	public Song(String newSongName, String newBandName, Integer newReleaseYear) {
		songName = newSongName;
		bandName = newBandName;
		releaseYear = newReleaseYear;
	}

	public override String getSongName() { return songName; }
	public override String getBandName() { return bandName; }
	public override Integer getReleaseYear() { return releaseYear; }

	public override void displaySongInfo() {
		System.debug(getSongName() + ' was recorded by ' + getBandName() + ' in ' + getReleaseYear());
	}
}
