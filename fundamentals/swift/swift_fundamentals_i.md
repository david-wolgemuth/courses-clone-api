# Swift Fundamentals I

Using your knowledge of variables, constants, and types fix the following code:

```swift
var type: String = "Rectangle"
var description: String = "A quadrilateral with four right angles"
var width: Int = 5
var height: Double = 10.5
var area: Double = width * height
height++
width++
area = width * height
// Note how you can "interpolate" variables into Strings using the following syntax
print("The shape is a \(type) or \(description) with an area of \(area)")
```

Swift's string interpolation lets us **inject constant and variables into a new String**. This allows constructing instances of String Type a breeze. Anything inside of the parenthesis in \() gets evaluated and gets injected into the string. We can even put expressions inside of the parenthesis and Swift will evaluate it first and then inject it into the instance of the _String Type_.

```swift
var numberOfChampionships = 5
let name = "Kobe"
print("My favorite player is \(name) and he has \(numberOfChampionships) rings")
print("His jersey number is \(8 * 3)")
```

You can download the playground [here](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3535/handouts/chapter3535_5392_SwiftFundamentalsI.playground.zip)