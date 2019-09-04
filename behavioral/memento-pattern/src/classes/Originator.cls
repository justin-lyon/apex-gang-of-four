public with sharing class Originator {
	private String article;

	public void set(String newArticle) {
		System.debug('From the originator: Current Version of Article: ' + newArticle);
		this.article = newArticle;
	}

	public Memento storeInMemento() {
		System.debug('From Originator: Saving to Memento.');
		return new Memento(article);
	}

	public String restoreFromMemento(Memento memento) {
		article = memento.getSavedArticle();
		System.debug('From Originator: Previous Article saved in Memento: ' + article);
		return article;
	}
}
