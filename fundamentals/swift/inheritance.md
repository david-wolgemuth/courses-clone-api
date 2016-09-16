# Inheritance

There are two main differences between Structs and Classes. We discussed how **Structs are passed by value** and **Classes are passed by reference**. The second main difference is that **Classes support inheritance** while **Structs do not**. In our Classes example, we created a Person class. Now let's create a Developer class that **inherits** from the Person class.

```swift
class Person {
  var species = "H. Sapiens"
  var name: String
  init(name: String) {         // Note: this function doesn't get called explicitly.  It is called 
                               // when creating an instance using the initialization syntax -- "Person()"
    self.name = name           // Note the use of "self" here to refer to the name property
  }
  func speak() {
    print("Hello! I am a \(self.species) and my name is \(self.name)") 
                               // Note how we refer to the properties using "self"
  }
}
class Developer: Person {      // Note how we are specifying that Developer will inherit from Person
  var favoriteLanguage: String
  init(name: String, favoriteLanguage: String) {
    self.favoriteLanguage = favoriteLanguage
    super.init(name: name)
  }
  override func speak() {
    print("Hello! I am a Developer! My name is \(self.name)")  
  }
}
var myDeveloper: Developer = Developer(name: "Jay", favoriteLanguage: "Swift")
myDeveloper.speak()
```

Wow, that's a lot of new code! Let's go over it in sections.

### Subclassing

Subclassing refers to creating a new class that is based on another class. This allows our new class to inherit all of the characteristics of the parent class. In our example above we specify that Developer is a subclass of Person in the class definition itself.

```swift
class Developer: Person {         // Here we specify that Person is the "Superclass"
  // Developer definition here
}
```

### Initialization

When we create a subclass, it automatically gains access to the super's init method. But what if we want to add logic to the initialization of just the subclass? In our Developer example, we want to also specify a favoriteLanguage property in the subclass' initialization. We do not want the Person class to have a favoriteLanguage so we declare the property in the Developer class and create another init method.

```swift
  var favoriteLanguage: String       // Declaring the favoriteLanguage property in Developer means that
                                     // it is only available in Developer and Developer's subclasses.
  init(name: String, favoriteLanguage: String) {           // Developer's init method takes in
                                                           // a name and a favoriteLanguage.
    self.favoriteLanguage = favoriteLanguage               // We set the favoriteLanguage property.
                                     // We then call the superclass' init method and pass it the name
    super.init(name: name)           // property since the logic is already written in Person's init.
  }
```

The main thing to remember when creating an init method in a subclass is the use of

<pre> super.init
```

which allows us to call upon the superclass' initialization method.

### Overriding Superclass Methods

By default, a subclass has access to all of the superclass' methods and properties. However, what if we wanted to override a particular method's functionality. Fortunately Swift allows us to prefix a method name with the override keyword to specify that we will be overriding the default superclass functionality. Let's see this in action:

```swift
  override func speak() {                    // We specify that we are overriding the speak function.
    print("Hello! I am a Developer! My name is \(self.name)")  
  }
```

Now when we called speak on an instance of Developer it will run the Developer's speak function rather than the superclass speak function.