# Swift Fundamentals II

It's important that you get familiar with using Swift variables and constants as well as if/else statements and loops. After all, understanding how to use these components make up the majority of what builds your apps. The basic assignments are to help you master some of these basic concepts.

Please create a playground and finish these exercises before uploading.

1.  First, create a loop (either for or while) that prints all of the values from 1-255
2.  Next, create a program that prints all of the values from 1-100 that are divisible by 3 or 5 but not both
3.  Now modify that program to print "Fizz" when the number is divisible by 3 and "Buzz" when the number is divisible by 5 as well as "FizzBuzz" when the number is divisible by both! (See Below).

To check divisibility you can use the module operator like so:

```swift
var number = 2
if number % 2 == 0 {
    print("Number is even")
} else {
    print("Number is odd")
}
```