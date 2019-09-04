# bridge pattern

Decouples an abstraction from its implementation so that the two can vary independently.

This example allows for multiple Animals that can move. However, they move in different ways. By using the adapter pattern to inject a move implementation on a concrete Animal, we can leverage a simple Strategy Pattern for Animals yet allow for each animal to vary in its approach to movement.

Credit to Andreas Poyias for his [example of the Bridge Pattern](https://blog.usejournal.com/design-patterns-a-quick-guide-to-bridge-pattern-9ebf6a77baed).

