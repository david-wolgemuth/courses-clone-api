# Conditionals

<div> We use conditionals to **execute code based on a specific logical condition**. For example, let's say we are having a party for NBA Legends. We only want to allow players with at least 5 rings. We could write the logic something like this:</div>

```swift
// Declare a variable called rings that is of the Int Type.
var rings = 5
if rings >= 5 {
    print("You are welcome to join the party")
} else {
    print("Go win some more rings")
}
```

If we have more than one condition we can add an _else if_ statement:

```swift
var rings = 5
if rings >= 5 {
    print("You are welcome to join the party")
} else if rings > 2 {
    print("Decent...but \(rings) rings aren't enough")
} else {
    print("Go win some more rings")
}
```

We used two comparison operators here. First, we checked if rings were greater than equal to 5\. We also checked if rings were greater than 2\. Here is a list of Swift's comparison operators:

## Comparison Operators

## ![](http://i.imgur.com/WzRERYY.png)

## Equality vs. Identity

**There is a difference between equality and identity**. For example == checks whether the instances on the left and the right are equal. **Two instances can be equal, but they don't need to have the same location in memory**. The last two operators are called identity operators. We will be going over the differences more in depth once we start creating our own Data Types.

## Logical Operators

![](http://i.imgur.com/pZx0B28.png)

We can use Logical Operators in our Conditionals as well. Let's say we want to change the criteria for entering our NBA Legends party. Let's say you have to have at least 5 rings AND have the name Kobe to enter the party:

```swift
var rings = 5
let name = "Kobe"
if rings >= 5 && name == "Kobe" {
  print("Welcome to the party \(name), congratulations on your \(rings) rings")
}
```

We can change our criteria and say that you have to have at least 5 rings or have at least 3 All-Star appearances.

```swift
var rings = 5
var numOfAllStarAppearances = 17
if rings >= 5 || numOfAllStarAppearances > 3 {
  print("Welcome you are truly a legend")
}
```

Or we can just let in everyone who is not crazy.

```swift
var crazy = true
if !crazy {
    print("Let's party!")
}
```