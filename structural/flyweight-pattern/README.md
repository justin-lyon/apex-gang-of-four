# flyweight-pattern

Reduces the cost of creating and manipulating a large number of similar objects.

This was actually a really interesting pattern for me to work through. The example shows how Player Types in the game CounterStrike might be instantiated when a game starts - rapidly creating multiple characters of different types from a cache of Player Templates.

Consideration: When a new object is returned it is passed by reference, any changes to the object at this time will be applied to the cached template - this would likely cause issues with sequential creation later. This might be combined with a Prototype pattern to create a Clone, but at that point we're defeating the purpose of the light-weight flyweight pattern. However I might see a use for this while interracting with the Salesforce Cache APIs combined with a Singleton around the Salesforce Cache.

Credit to Chirag Agarwal for his [guide on geeksforgeeks.org](https://www.geeksforgeeks.org/flyweight-design-pattern/)
