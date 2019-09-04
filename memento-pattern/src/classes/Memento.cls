public with sharing class Memento {
	private String article;

	public Memento(String articleSave) {
		this.article = articleSave;
	}

	public String getSavedArticle() { return this.article; }
}
