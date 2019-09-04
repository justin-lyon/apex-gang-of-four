public with sharing class SongGroup extends SongComponent {

	private List<SongComponent> songComponents = new List<SongComponent>();
	private String groupName;
	private String groupDescription;

	public SongGroup(String newName, String newDescription) {
		groupName = newName;
		groupDescription = newDescription;
	}

	public String getGroupName() { return groupName; }
	public String getGroupDescription() { return groupDescription; }

	public override void add(SongComponent newSongComponent) {
		songComponents.add(newSongComponent);
	}

	public override void remove(SongComponent newSongComponent) {
		Integer index = songComponents.indexOf(newSongComponent);
		songComponents.remove(index);
	}

	public override SongComponent getComponent(Integer index) {
		return songComponents[index];
	}

	public override void displaySongInfo() {
		Iterator<SongComponent> iterableSongs = songComponents.iterator();
		while(iterableSongs.hasNext()) {
			SongComponent song = iterableSongs.next();
			song.displaySongInfo();
		}
	}
}
