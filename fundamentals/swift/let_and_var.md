# Variables

In order to store information in our code, we use variables. Swift is what we call a **statically typed language** what this means is that we need to specifically declare the "type" of each of our variables. Let's see this in action:

```swift
// Variables are used to store data. We declare a variable using the "var" keyword.
// We also have to specify the type of that variable.
var name: String = "Anakin"
// Every variable declaration follows the same format:
// var variable_name: variable_type = variable_value
```

Although this may seem unnecessary, strongly typed languages allow the computer to run more efficiently by allocating just enough memory to store the specific data type. Internally, computers store variables in blocks of memory that are just 1s and 0s. Specifying the type allows the computer to understand not only how much actual space to allocate but also how to interpret the 1s and 0s that are stored!

A strongly typed language not only forces you to **declare the type** but, more importantly, disallows you from **changing the type** this means that once a variable is declared as a "String" type it must always store a String. Let's see this in action:

```swift
var name: String = "Anakin"
name = "Darth Vader"  // Changing the "name" variable to another string is allowed...
                      // ...but trying to change the var to a value of ANOTHER type is not allowed.
name = 42             // THIS WON'T WORK because we are trying to change a variable that is a "String"
                      // type to a value that is a "Int" type
```

**This means that once we declare a variable we can only hold one specific type of data inside of it!**

### Basic Types

```swift
var str: String = "This is a String"   // "String" type.
var num: Int = -42                     // "Int" type stores whole numbers both negative and positive.
var dec: Double = 4.2                  // "Double" type stores numbers with decimals (allocates 64 bits).
```

### Why is Swift Statically Typed?

**Performance**.

Many other languages like Ruby and Javascript are **dynamically typed languages** meaning that we don't need to specifically declare the type and we can change what is stored in a variable back and forth between different types. Although loosely typed languages may be easier for the developer (since the developer doesn't need to worry about types), it reduces performance because now the computer has to worry about remembering types and how to store different values of different types. In addition, the computer now has to allocate extra space for each variable and it has to store them in such a way that the variable can hold any type of information. **Swift is statically typed** so it forces the developer to be more conscious about types and it also allows the computer to run more efficiently by allocating just enough space for each variable.

# Type Inference

Constantly having to specify the type can get tedious very quickly. Fortunately in addition to caring about performance, Swift also caters to the developer! Swift uses "type inference" to allow us to forego specifying the type when declaring a variable and assigning it to a value in the same line. Swift will look at the value and "infer" the type so that you don't have to specify it.

```swift
// Swift has "type inference"
var name = "Anakin"  // String type
                     // Swift looked at val on the right and inferred type: we didn't have to specify!
```

#### Even though we didn't have to specify the type, the variable still has a type that cannot change after a declaration.

```swift
var name = "Anakin"            // Type inferred as String based on the value "Anakin"
name = 42                      // THIS IS STILL NOT ALLOWED since name is a "String" type
```

**Take a minute and try out the above code in a playground and see what the error message is.**

# Constants

**Variables hold data that varies**. In many programming languages, variables are used for everything, even for values that never change. **Constants hold data that does not vary**. We cannot change constants. Constants are a big deal in Swift. **Use constants in all parts of your code except for areas where you HAVE to use a variable**. Using constants to hold data that won't change allows our code to be more explicit while at the same time helps the compiler to run our programs more effectively. 

We declare constants using the "let" keyword:

```swift
                            // Declare name as a constant because we anticipate that it will NOT change.
let name: String = "Anakin Skywalker"
                            // Note that just like variables, constants also have types
                            // Now we cannot change the name:
name = "Darth Vader"        // THIS WON'T WORK because name is a constant so we CANNOT change it.
```

## Mutable vs. Immutable

**Mutable** means that we can change the value and** immutable** means that we cannot change the value. In Objective-C, there were _explicit Types_ that were indicated as Immutable. For example, there was a class for mutable_ String Types_ and a separate class for immutable _String Types_. In Swift, we can still have immutable and mutable Strings without having another class because of the difference between the_ let _and the _var_ keywords.

We use the keyword_ let _when we want to declare a constant. **Constants** are values that are not going to change during your program. We use the_ var _keyword when we want to hold onto a value that might change. Using these keywords we can create mutable strings and immutable strings.

```swift
                                // We are declaring a mutable string because we store it in a var.
var myMutableString = "change me"
                                // We are declaring an immutable string because we store it in a const.
let myImmutableString = "can't change"
                                // We can change the value of a mutable string...
myMutableString += "!"
                                // ...but we cannot change the value of an immutable string.
myImmutableString += "ahhhh"    // This will error.
```

This is the same for Arrays.

```swift
// We are declaring a mutable array because we are storing it in a variable.
var myMutableArray = ["one"]
// We are declaring an immutable array because we are storing it in a constant.
let myImmutableArray = ["uno"]
// We can append new String instances to the mutable array...
myMutableArray.append("two")
// ... in fact we can add new things to this mutable array as well...
myMutableArray + ["three", "four"]
// ...but we will get an error when we try to do the same to an immutable array.
myImmutableArray.append("dos")
```

And for dictionaries.

```swift
                          // We are declaring a mutable dictionary because we store it in a variable.
var myMutableDictionary = ["one": 1]
                          // We are declaring an immutable dictionary because we store it in a constant.
let myImmutableDictionary = ["uno": 1]
                          // We can add a new key-value pair to our mutable dictionary ...
myMutableDictionary["two"] = 2
                          // ... or update a value of an existing key...
myMutableDictionary["one"] = 0
                          // ... but we get an error when we try to do same to an immutable dictionary.
myImmutableDictionary["uno"] = 2
```