# facade pattern

Provides a simplified interface to a larger body of code.

This example tucks away the detailed bank account logic behind a facade.

In Salesforce we'll commonly see this implemented on Triggers. Using a Trigger Facade allows us to build our trigger logic by composition into the Facade. This allows us to separate logic into maintainable classes, yet gives us a single location - the facade - to control the order of execution.

[Salesforce Facade Example](https://developer.salesforce.com/page/Apex_Design_Patterns#Facade)
