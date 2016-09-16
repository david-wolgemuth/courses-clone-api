# Animals

### Objective

The objective of this assignment is to help you understand inheritance and how classes can be used to help organize your code. Apple gives us access to the iOS framework to build mobile applications, and the different APIs in the framework are built on heavy OOP principles that involve inheritance. Therefore, it is extremely important to understand inheritance so that you can navigate the iOS landscape more easily. 

### To Do

**First, create a class called Animal**

1.  Give Animal a property "name"
2.  Give Animal a property "health" with a default value of 100
3.  Give Animal an initialization that takes in a name and sets the name property appropriately
4.  Give the animal a displayHealth method

**Next, create a subclass of Animal called Cat**

1.  Give the Cat a method "growl" that prints to the screen "Rawr!"
2.  Modify the Cat's health to be 150
3.  Give the Cat a method "run" that prints to the screen "Running" and deducts 10 health

**Next, create two subclasses of Cat - Cheetah and Lion**

1.  Override the growl method of the Lion to make it print "ROAR!!!! I am the King of the Jungle"
2.  Override Lion's health to be 200
3.  Override the Cheetah's run method to print "Running Fast" and deduct 50 health 
4.  Add a sleep function to the Cheetah class that adds 50 health (make sure that the Cheetah's health limit remains 200)

**Create a Cheetah. Have the Cheetah run 4 times. Display the Cheetah's health. Now modify the _Cat's_ run method so that it cannot run if it does not have the required health.**

**Create a Lion. Have the Lion run 3 times. Have the Lion growl.**

Uploadyour playground below.