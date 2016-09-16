# Loops

Computers are really good at two things: **storing information**, and **doing something over and over again**. If we want to execute a set of code repeatedly for a given number of iterations or until it reaches a specific condition, we will use loops. There are two types of loops: the for loop and the while loop. We **use the for loop when we know beforehand how many times we are going to have to repeat the code** while we **use the while loop when we don't know how many times we have to run the code, but we know we have to run the code until it reaches a particular condition.** However, at their core, they are both the same, we can do whatever you can do with a for loop instead of a while loop and vice versa.

## For-in Loops

A **for-in loop performs a set of code in a specific range, sequence, or collection**. For now, we will focus on using the for-in loop with a range. Go ahead and run the following code below, in the playground, and see what the output is from the Assistant Editor.

```swift
// loop from 1 to 5 including 5
for i in 1...5 {
    print(i)
}
// loop from 1 to 5 excluding 5
for i in 1..<5 {
    print(i)
}
```

You can just as easily use variables to create a range as well!

```swift
var start = 0
var end = 5
// loop from start to end including end
for i in start...end {
    print(i)
}
// loop from start to end excluding end
for i in start..<end {
    print(i)
}
```

Note that when writing for loops in Swift, you will always use the "for-in" style with a range. Although you can still use the C-style for loops with the separate initialization, condition, and increment clauses it has been deprecated in Swift 2.x and will be taken out altogether in Swift 3.

## While Loops

A **while loop is used to loop for an unknown number of times.** Unlike a For-in loop where you first specify a range to loop through, in a while loop, we simply specify a condition. Anything that we write with a for-in loop can be written with a while loop. Let's see how we can convert our for-in loops to while loops.

We can re-write this _**for-in**_ loop...

```swift
for i in 1...5 {
    print(i)
}
```

... as a **_while_** loop.

```swift
var i = 1
while i < 6 {
    print(i)
    i = i+1
}
```

Note that the while loop syntax requires us to create our own bounds. In later assignments, you may find situations where you don't know how many times you will need to repeat before entering the loop in these situations it is important to know how to use a while loop.