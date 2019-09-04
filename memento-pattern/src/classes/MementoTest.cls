@isTest
private class MementoTest {

	private static Integer saveFiles = 0;
	private static Integer currentArticle = 0;

	static TestMethod void TestMemento() {
		Caretaker caretaker = new Caretaker();
		Originator originator = new Originator();

		// Setup a file that has versions saved in state (Memento)
		String originalText = 'original text';
		String updatedText = 'updated text';
		saveFile(caretaker, originator, originalText);
		saveFile(caretaker, originator, updatedText);
		System.debug('Save Files: ' + saveFiles);

		// CTRL + Z to undo a text change.
		String undoText = originator.restoreFromMemento(caretaker.getMemento(0));
		System.assertEquals(originalText, undoText);

		// CTRL + Y to redo a text change.
		String redoText = originator.restoreFromMemento(caretaker.getMemento(1));
		System.assertEquals(updatedText, redoText);
	}

	private static void saveFile(Caretaker ct, Originator file, String text) {
		file.set(text);
		ct.addMemento(file.storeInMemento());
		saveFiles++;
		currentArticle++;
	}
}
