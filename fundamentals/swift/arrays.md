# Arrays

We often have to combine related values into a collection. Swift provides us with two Collection types: Array and Dictionary. First, we will go over the Array. **Arrays are an ordered collection of values**. On the other hand, **Dictionaries are an unordered collection of key-value pairs**. Let's first go over Arrays. Each position is defined with an index starting at 0\. It's a lot easier to explain with examples.

We will declare a variable _toDoList_ to be of an **instance of the Array Type** which will hold onto an **ordered collection of instances of the String Type**. The [] brackets denote the Array type and inside of the brackets we place the type of the values that we'll be storing.

```swift
var toDoList: [String] = ["Learn iOS", "Build the next Flappy Bird", "Retire in Cancun"]
```

Here we are declaring the toDoList _and_ giving it some values to begin with. What if we wanted to start with no tasks and then gradually add them on? We would have to initialize an empty array like so:

```swift
var toDoList: [String] = [String]()              // Setting the array type and initializing the array
toDoList.append("Learn iOS")
toDoList.append("Build the next Flappy Bird")
toDoList.append("Retire in Cancun")
print(toDoList)
```

Every Instance of Array has the "append" method that allows you to add elements to the Array collection.

Now if we are initializing an instance of an _Array Type_ that will hold onto instances of the _String Type_, we can get rid of the type annotation because Swift will be able to infer its type with_ [String]()_ just like value types.

```swift
var toDoList = [String]()
toDoList.append("Learn iOS")
toDoList.append("Build the next Flappy Bird")
toDoList.append("Retire in Cancun")
print(toDoList)
```

Just like how we could not assign an_ Int _to a variable or a constant that was declared to hold a different _Type_, if we try to append an instance of a _Type_ that is not a _String_, Swift will throw us an error.

![](http://i.imgur.com/kGFlfDV.png)

Accessing Arrays

Arrays are zero indexed. What this means is the first instance inside of an _Array_ lives at index 0\. The second instance inside of an Array lives at index 1. 

```swift
var arrayOfInts = [1, 2, 3, 4, 5]      // Note that we let Swift infer the type here
// The first number lives at index 0.
print("\(arrayOfInts[0])")
// The second number lives at index 1.
print("\(arrayOfInts[1])")
// The third number lives at index 2.
print("\(arrayOfInts[2])")
// The fourth number lives at index 3.
print("\(arrayOfInts[3])")
// The fifth number lives at index 4.
print("\(arrayOfInts[4])")
```

We used ranges in our _for-in_ loops. Ranges can be used to index instances of the _Array Type_ as well.

```swift
var arrayOfInts = [1, 2, 3, 4, 5]
// => "[1, 2]"
print("\(arrayOfInts[0...1])")
// => "[2, 3, 4]"
print("\(arrayOfInts[1..<4])")
// => "[3, 4]"
print("\(arrayOfInts[2...3])")
```

After we access an Array using its index, we can set the value at that particular index as well.

```swift
var arr = [1, 2, 3, 4]
arr[0] = 8
print(arr)      // The array has now changed!
```

## Methods and Properties

Arrays have several methods and properties -- these are just a few that will help you use and modify your collections.

### append()

<div style="line-height: 18px;">We already saw how we could append instances to an _Array_. We use the append method to add a given element to the array. This method is very similar to push methods in other languages:</div>

```swift
var nums = [1, 2, 3, 4]
nums.append(5)
print(nums)
```

### removeAtIndex()

We can run the method _removeAtIndex_ on an Array and provide the index of the element we want to delete. This method is going to return the particular instance that we are removing from the_ Array_ while removing that instance from the _Array._

```swift
var arrayOfInts = [1, 2, 3, 4, 5]
var popped = arrayOfInts.removeAtIndex(0)
print(popped)
print(arrayOfInts)
```

### insert()

We run the _insert_ method with two arguments. The first argument is the value that we would like to add to the _Array _and the second argument is the index where we would like to insert it. When we pass in the second argument, we have to give it a name _atIndex_. We will be going over these named parameters more in the Functions tab.

```swift
var arrayOfInts = [1, 2, 3, 4, 5]
arrayOfInts.insert(6, atIndex: 5)
```

### count

The _Count _is a property of the_ Array Types._ It holds the total number of elements in an _Array. _This property is very useful when we are looping through an _Array._ We can write the previous code using the count method.

```swift
var arrayOfInts = [1, 2, 3, 4, 5]
arrayOfInts.insert(6, atIndex: arrayOfInts.count - 1)
```

## Looping Through Arrays

The _for-in_ loop makes looping through all instances within an _Array_ a breeze.

```swift
var starters = ["Fisher", "Kobe", "Gasol", "Bynum", "World Peace"]
for starter in starters {
    print(starter)
}
```

Or we can use a range as well along with the count property:

```swift
for i in 0..<starters.count {
    print(starters[i])
}
```