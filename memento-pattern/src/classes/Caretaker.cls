public with sharing class Caretaker {

	List<Memento> savedArticles = new List<Memento>();

	public void addMemento(Memento m) { savedArticles.add(m); }
	public Memento getMemento(Integer index) { return savedArticles[index]; }
}
