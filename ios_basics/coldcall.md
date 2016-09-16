## Assignment: Cold Call

Create an application that will **pick out a random name from an Array of names every time the cold call button is clicked**. We will be hard coding this Array of names in our View Controller. We will be using Auto Layout in this assignment. Make sure your application has behavior similar to the gif image below:

![](http://i.imgur.com/fhFfVPd.gif)

### Hint

You can create a random number from 0 to 4 with the following code:

```swift
arc4random_uniform(5)
```

This means we can create a random number from 1 to 5 with the following code:

```swift
arc4random_uniform(5) + 1
```