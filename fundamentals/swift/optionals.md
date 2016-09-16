# Optionals

Optionals are an extremely important part of Swift programming. **Previously in Objective-C, any variable could hold a nil value.** This makes life easier for the developer in many cases but can also lead to many errors when the developer forgets to handle the nil case. **Swift forces the developer to be cautious of potential nil values through the use of Optionals.** An optional is a type that could either hold nil or a value of a specific type. Let's see an example:

```swift
var name: String = "Jay"  // This is a String type
var pet: String?          // This is an Optional String Type
                          // Right now the val of pet is nil (we've not given it a val, so it has none).
pet = "Skippy"
```

We know two things about an instance of an  _Optional Type_. **It either has a value or it has no value or nil**. For example, an empty string _"" is different from nil. There still is the value from ""_. **When it is nil it means there's nothing there.** _Optionals_ signal that an **instance may not have a value**. It warns developers that the value may **potentially be nil**. And **nil is very bad**. When we expect an instance to have a value and it doesn't, our application will crash. As iOS developers, we have to be very cautious of _nil _and **Optionals help us be better programmers and make Swift a safer language.**

```swift
var xFactor: String?
```

Here we declared the variable  _xFactor_ to be of an **Optional Type that may contain an instance of a String Type**. We are declaring this as an _optional_ because_ xFactor_ might potentially be nil and we should not assume _xFactor_ to contain a value in our program. Let's store a value to this_ Optional Type_ and try to print it out. 

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3109/handouts/chapter3109_5324_iOS-Optionals.png)

We have to first unwrap the _Optional_ before we can use it. It's like a present. We first make sure that it isn't empty by shaking it around. If we hear something then we safely unwrap the present. 

Doing something like this is very common in Swift. If an _Optional Type_ is not_ nil _then do something. In fact, this is so common that there is a special syntax to make this process easier. This syntax is called **Optional Binding**.

```swift
var present: String? = "Apple Watch"
// If we can let "unwrappedPresent" equal "present" meaning there is something inside of present then go on to do something with "unwrappedPresent"
if let unwrappedPresent = present {
    print("OMG THANK YOU FOR THE \(unwrappedPresent)")
}
```

## Force Unwrapping

If we are 100% confident that the optional has a value and does not hold nil we can use shorthand syntax to unwrap the optional like so:

```swift
var present: String? = "Apple Watch"        // If we can let "unwrappedPresent" equal "present"
                                            // (meaning there is something inside of present)
                                            // then go on to do something with "unwrappedPresent"
print("OMG THANK YOU FOR THE \(present!)")  // Force unwrap using the "!"
```

We can force-unwrap optionals using the "!" operator. Note that this should only be done when we are absolutely sure that the optional holds a value (usually right after the optional has a value assigned to it).

## Implicitly Unwrapped Optionals

Implicitly unwrapped _optionals_ are a little weird. **They are still of the Optional Type**: it can either contain a value or it is nil. The difference is that **we don't need to unwrap them**. With great power comes great responsibility. If we try to access the value of an implicitly unwrapped optional, it will result in a runtime error if it does not have a value. 

```swift
var present: String! = "Apple Watch"         // We don't have to unwrap to use the value,
print("\(present)")
present = nil                                // but we can still set it to nil.
print("\(present)")
```

Implicitly unwrapped _optionals _are reserved for special cases. We will go over them more in depth in a later chapter.