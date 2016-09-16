# Value vs Reference Types

Every type in Swift falls into one of **two categories: Value Types or Reference Types.** The easiest way to remember which is which is to remember that **Classes and Functions are the only Reference types** and everything else is a Value Type. But what does Value Type actually mean? 

**Value types are copied ** (if you change the value of the copy, you will not change the original) when they are **assigned to a variable or a constant** and **when they are passed in as an argument to a function**.

On the other hand, **Reference types** are not copied. Instead, their **memory address location **is passed back and forth so changing the value of a Reference Type will change all of the "pointers" (variables or arguments) that refer to that object. 

Let's take a look at an example:

```swift
class Person {
  var fullName: String
  init(name: String) {
    self.fullName = name
  }
  func introduce() {
    print("Hi my name is \(self.fullName)")
  }
}
var j = Person(name: "Ketul Patel") // Initialize a Person object and assign it to the j variable
var k = j                           // Create a k variable and set its value to be the j variable
                                    // (remember classes are reference types) 
j.introduce()                       // Prints "Hi my name is Ketul Patel"
k.fullName = "Ketul J Patel"        // We are changing the name through the k variable.
j.introduce()                       // Prints "Hi my name is Ketul J Patel" since both
                                    // j and k refer to the same instance in memory
```

Whoa, that's a lot of confusing code! Let's walk through it step by step.

1.  We create the Person class that has a "fullName" property and an introduce method
2.  We create an instance of Person and assign it to the "j" variable. This instance has the value "Ketul Patel" stored in the fullName property
3.  We create another variable "k" and assign it to the "j" variable. Since classes are reference types instead of copying the instance in the "j" variable we simply point both "k" and "j" to the same instance in memory
4.  Since k and j refer to the same instance, when we change the value by referencing the instance through the k variable it changes the value for j as well (one instance in memory referred to by 2 variables or "pointers")

**In contrast, Structs are Value Types which means that when they are passed, their values are copied and then passed. **

Let's take a look at an example of this:

```swift
struct Rectangle {
  var width: Int
  var height: Int
}
var square1 = Rectangle(width: 10, height: 10)
var square2 = square1                         // Here the val inside square 1 (an instance of Rectangle)
                                              // is copied and passed rather than just pointed to.
print("square1's width: \(square1.width), square2's width \(square2.width)") 
                                              // They are the same because square2 is a copy of square1
square2.width = 20                            // This only changes square2 because there are
                                              // 2 separate instances of rectangle in memory
square2.height = 20
print("square1's width: \(square1.width), square2's width \(square2.width)") 
                                              // They are different now: changing square2 changed a
                                              // completely separate instance from square1.
```

The major difference between Structs and Classes is the Value vs Reference Types that we see in the examples above. Remember that we **pass types in 2 main ways -- pass to a variable and pass to a function**. 

**Every type in Swift that is not an instance of a class or function is a Value Type. This includes Strings, Arrays, and Dictionaries which are implemented internally as Structs in Swift. **

The only way to pass a Value Type by memory location is by using the **inout** designation when passing the Value type as an argument to a function.