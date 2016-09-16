# Creating Your Own Types in Swift

There are three main ways for us to create our own types in Swift: **Classes, Structs, and Enumerations.** We'll be focusing on Classes and Structs since you will be using them heavily in your own code. Let's start with classes.

## Classes

Classes in Swift allow you to define the blueprint of a particular type and then create instances of that type (also known as Objects). This paradigm of creating your own types and then instantiating them is known as **Object Oriented Programming** and becomes very powerful when creating large scale applications with multiple components. Let's start by creating a class:

```swift
class Person {
  var species = "H. Sapiens"
}
var myPerson: Person = Person()
print("\(myPerson.species)")
```

Here we have created the class Person that has one **property** "species" and then we create an instance of the person called "myPerson". Note that we are declaring the type of myPerson to be the class that we defined above. This means we can create our own types!

### Stored Properties

```swift
class Person {
    var species = "H. Sapiens"
}
```

Here the Person class has  **one stored property and it has a default value of "H. Sapiens"**. Since we declared the property as a variable it is both readable and writable (meaning we can access it _and_ change it).

```swift
var myPerson = Person()                 // Note use of type inference to infer that it is "Person" type
myPerson.species = "Homo Sapiens"       // We can change the property
print("\(myPerson.species)")            // And we can access it!
```

We can  **create read-only properties by simply declaring properties as a constant**. Since the values can't be changed, it can't be written which makes it a read-only property.

```swift
class Person {
    let species = "H. Sapiens"
}
var myPerson = Person()
myPerson.species = "Homo Sapiens"       // ! => Cannot assign to 'species' in myPerson
```

### Methods

**Methods are functions that are associated with a Type**. While properties define what an instance "knows", methods define what an instance "can do". Let's see methods in action with our Person example.

```swift
class Person {
  var species = "H. Sapiens"
  func speak() {
    print("Hello! I am a \(self.species)")   // Note how we refer to the properties using "self"
  }
}
var myPerson: Person = Person()
myPerson.speak()                             // Note we call method similar to how we access properties
```

### Method Parameter Names

So far we only implemented methods that take no arguments. Methods and functions are very similar.  **Methods are just functions associated with a Type**. **The first argument of a method does not get an external parameter name**, but all other arguments get external parameter names. If a method only has one argument, the same rule applies which means the argument does not get an external name.

```swift
class User {
    var intelligence = 0
    func studyForTopic(topic: String, hours: Int) {
        print("I am studying \(topic) for \(hours) hours")
    }
}
var user = User()
user.studyForTopic("Math", hours: 12)
```

It is common practice to  **write the name of the first argument in the actual function name** ('Topic') because the **f****irst argument is not going to get an external parameter name**. By following this practice, it becomes very clear what each argument does. **M****ethods do not give free external parameter names for the first argument but do give external parameter names for all arguments afterwards.**

### **Initialization**

Initialization is the **operation of setting up an instance of a type**. It helps us create an instance with appropriate values. So far, we didn't have to worry about initializer because **we have been giving default stored values when defining properties**. However, if we want more control over how an instance of a Type is created, we will have to write our own initializer.

Let's add a name property to our Person class and then add the code to allow a user to specify the name when initializing the instance.

```swift
class Person {
  var species = "H. Sapiens"
  var name: String
  init(name: String) {   // Note this function doesn't get called explicitly. It is called 
                         // when creating an instance using initialization syntax -- "Person()".
    self.name = name     // Note use of "self" here to refer to the name property.
  }
  func speak() {
    print("Hello! I am a \(self.species) and my name is \(self.name)")
                                             // Note how we refer to the properties using "self".
  }
}
var myPerson: Person = Person(name: "Jay")   // Now we have to pass a param to Person initialization.
myPerson.speak()                             // Note we call method similar to how we access properties.
```