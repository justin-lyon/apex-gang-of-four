public abstract class SongComponent {

	// Optional Base Implementation
	public virtual void add(SongComponent newSongComponent) { throw new UnsupportedOperationException(); }
	public virtual void remove(SongComponent newSongComponent) { throw new UnsupportedOperationException(); }
	public virtual SongComponent getComponent(Integer index) { throw new UnsupportedOperationException(); }
	public virtual String getSongName() { throw new UnsupportedOperationException(); }
	public virtual String getBandName() { throw new UnsupportedOperationException(); }
	public virtual Integer getReleaseYear() { throw new UnsupportedOperationException(); }
	public virtual void displaySongInfo() { throw new UnsupportedOperationException(); }
}
