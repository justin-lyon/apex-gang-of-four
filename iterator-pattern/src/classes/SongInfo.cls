public with sharing class SongInfo {

	private String songName;
	private String bandName;
	private Integer yearReleased;

	public SongInfo(String songName, String bandName, Integer yearReleased) {
		this.songName = songName;
		this.bandName = bandName;
		this.yearReleased = yearReleased;
	}

	public String getSongName() { return this.songName; }
	public String getBandName() { return this.bandName; }
	public Integer getYearReleased() { return this.yearReleased; }
}
