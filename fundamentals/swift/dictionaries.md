# Dictionaries

An _Array Type_ is useful for a collection of ordered instances, but a **Dictionary Type is more suitable for unordered instances**. When we want to look for a definition, or value of a particular word in a dictionary, we look up the word in the dictionary and read its definition. A **Dictionary Type is a collection type that organizes its content by key-value pairs**. A _key_ maps to a value just like a word in a dictionary maps to a definition. 

## Initializing a Dictionary

```swift
// Here we are declaring myDict variable to be of Dictionary Type that will use instances of String as
// its keys and instances of Int as its values
var myDict2: [String: Int]
```

Once again, if we just declare a variable or a constant to be of the _Dictionary Type_, **we will get an error when we try to do something with it because we have not initialized it yet.**

```swift
var myDict2: [String: Int] = [String: Int]()
```

Of course, we can use Swift's type inference:

```swift
var myDict2 = [String: Int]()
```

We can declare, initialize and set the values of the Dictionary in one line:

```swift
// here we are declaring myDict variable to be of Dictionary Type that will use instances of String as 
// its keys and instances of Int as its values
var dictionary = [
    "Kobe": 24,
    "Lebron": 23,
    "Rondo": 9
]
// Note how we are leveraging Swift's type inference here
```

## Accessing a Dictionary

We can access _Dictionaries_ just like how we accessed Arrays. **We just have to provide the key in-between brackets**. However unlike Arrays where the keys are instances of _Ints_ and are zero-index based, Dictionary** _keys_ can really be anything** and are not particularly ordered. We can access Kobe's number this way from the previous dictionary that we created:

```swift
dictionary["Kobe"]
```

On the Playground's right pane, it will say that the value is 24 but don't be fooled. **When we access a Dictionary we get back an Optional Type**. This makes sense because there is a chance that a key doesn't exist in the dictionary. For example, the word 'gullible' might not exist in the _Dictionary_, therefore, it makes sense that when you access a _Dictionary_, **Swift will warn us that it might be nil by returning an Optional**. We can see this safety net in action when we try to store the result of the access to a separate variable:

```swift
var jerseyNumber = dictionary["Kobe"] 
print(jerseyNumber) // Optional is not unwrapped
```

We can be very bold and just unwrap it:

```swift
var jerseyNumber = dictionary["Kobe"]!
print(jerseyNumber)
```

But it is better practice to use **Optional Binding**:

```swift
if let jerseyNumber = dictionary["Kobe"] {
    print(jerseyNumber)
}
```

## Modifying a Dictionary

We can modify a Dictionary in a similar way we did with Arrays.

```swift
var dictionary = [
    "Kobe": 8,
    "Lebron": 23,
    "Rondo": 9
]
print(dictionary)
dictionary["Fisher"] = 2
print(dictionary)
dictionary["Kobe"] = 24
print(dictionary)
```

If the _key_ exists, we update the value of what is on the right-hand side of the equals sign. If the_ key_ doesn't exist, we add a new _key_ to the dictionary along with the value we provided on the right of the equals sign.

## Removing

We can remove a _key-value_ pair by accessing the key and giving it the value of _nil_:

```swift
dictionary["Lebron"] = nil
```

Or we can send the message _removeValueForKey_.

```swift
var lebronsNumber = dictionary.removeValueForKey("Lebron")
print(lebronsNumber)
```

It is important to note that **this message returns an Optional Type that might contain the value of the key-value pair that was deleted**. Once again it makes sense that this method returns an _Optional Type_ because the key specified by the user might not be present in the dictionary. We can unwrap it with Optional Binding:

```swift
if let lebronsNumber = dictionary.removeValueForKey("Lebron") {
    print(lebronsNumber)
}
```

## Looping

We can use the _for-in_ loop to loop through the _keys_ and the values of Dictionaries. 

```swift
for (key, value) in dictionary {
    print("The key is \(key) and the value is \(value)")
}
```

The (_key, value_) is of the _Tuple type_. Read more about **Tuples** in the Tuples section in  [The Basics](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID329).

```swift
for x in dictionary {
    print(x)
}
```

If we don't provide the (_key, value_) then Swift will print out a _tuple_ for each _key-value_ pair. Tuples ARE (key, value) pairs.