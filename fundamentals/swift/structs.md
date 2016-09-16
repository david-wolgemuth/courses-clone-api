# Structs in Swift

Structs in Swift are used to create types that hold a collection of values. **At first ****glance Structs may look very similar to classes but there are a couple key differences that we'll be going over in the coming chapters.**

Structs, like classes, are used to create types. Generally, Structs are used more for creating collections of values. For example representing shapes is a great use for structs! Let's see this in action:

```swift
struct Rectangle {
  var width = 10
  var height = 20
}
var myRectangle = Rectangle()           // Taking advantage of type inference
print("\(myRectangle.width)")
```

Here we declare the Rectangle struct that has two stored properties: width and height that each has default values of 10 and 20 respectively. We instantiate the rectangle using the same syntax as with Classes.

### Struct Methods

Methods in Structs are very similar to methods in classes. Let's revisit our rectangle example.

```swift
struct Rectangle {
  var width = 10
  var height = 20
  func printDesc() {
    print("I have a width of \(width) and a height of \(height)")
  }
  mutating func doubleWidth() {                // Why do we need the mutating keyword here?
    width *= 2
  }
}
```

We implemented two methods in Rectangle. The first method, printDesc does not have to be prefixed **with the mutating keyword because the method is not changing the value of the instance in any way**. However, our second method, doubleWidth, **changes the value of one of its properties. Since the value is changing we have to prefix the method with the mutating keyword. **

**Interestingly enough, we do NOT need the mutating keyword when writing a similar method in a Class. This has to do with _value types vs reference types_ which we will go over soon.**

### **Struct Initialization**

Similar to Classes, with Structs, we need to initialize our properties when instantiating the class if they are not given default values. Fortunately, **Swift will give us a "memberwise" initializer so that we don't have to explicitly define the initialization method**. This **memberwise initializer will include external parameter names for all of the stored properties that need values**. Let's see this in action.

```swift
struct Rectangle {
    var width = 200
    var height = 400
}
let rectangle = Rectangle()
```

In the above implementation of the Rectangle Struct, we used the free "empty" initializer provided to us by the Swift compiler. We are given a  **f****ree "empty" initializer for our Types if we give all of our stored properties default values** **and do not define our own custom initializer.**

```swift
struct Rectangle {
    var width: Int             // If we don't give default vals to vars, we have to use type annotation.
    var height: Int
}
```

If we don't set the default values for all of the stored properties, then we will have to rely on the **"memberwise" initializer mentioned above.** **In this case, we don't have access to the free "empty" initializers anymore because we no longer can ensure that every property is going to have a value by the end of the initialization.**

![](http://i.imgur.com/tm9xMnN.png)

Wait a minute...the error is saying that we are missing an external parameter name...but we never defined any. Here, because we didn't provide default values for our stored properties, and we didn't implement our own custom initializer,  **Swift will give us a "memberwise" initializer this time**.  To reiterate, the **m****emberwise initializer will include external parameter names for all of the stored properties that need values**. 

```swift
struct Rectangle {
    var width: Int
    var height: Int
}
let rectangle = Rectangle(width: 200, height: 400)
```

It is important to remember that the  **primary role of initialization is to make sure that the new instance has values for all of its stored properties**. If this is not possible, Swift will yell at us until we make the necessary changes to ensure that all stored properties will have a value at the end.

### But wait... What's the real difference between Classes and Structs? Why do we have both?

To really understand why we have both Classes and Structs we must understand the difference between value and reference types. Turn to the next chapter to explore this.