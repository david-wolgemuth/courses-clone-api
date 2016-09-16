# Playground

Playgrounds were introduced starting from Xcode 6\. Swift is a **compiled language**. What this means is that Xcode must first compile the entire program into 1s and 0s before it can execute the program. On the other hand, **Ruby and JavaScript are interpreted languages**. The difference is that compiled languages have to be translated completely before running while interpreted languages get translated on the fly as the program is getting read.

Interpreted languages are slower than compiled languages. However, they are great for certain tasks where speed doesn't matter very much. For example, Interpreted languages are great for web applications because the bottleneck is almost never the language and if it is, it is probably because of poorly written code. On the other hand, native applications and games are often built in compiled languages because once they are compiled, it takes less time to execute than a program written with an interpreted language.

Compiled languages are great but sometimes miss the immediate feedback you can get while playing around with Interpreted languages. This proposes a dilemma because playing around with code line by line is essential in learning a new language. However, this is hard to do with compiled languages. Xcode 6 fixed this issue with Swift with the introduction of Playgrounds. A playground does not require you to compile and run a complete project and evaluates Swift code on the fly like an interpreter for an interpreted language would.

Go ahead and let's create our first Playground project. Click on **Get started with a playground** and create a file called _stringconcat_. 

![](http://i.imgur.com/f8DJfCE.png)

![](http://i.imgur.com/TwvPJCe.png)

The playground is split into two sections. On the left, there is the Swift code editor where we can write our code and on the right we have a sidebar that evaluates Swift code. 

![](http://i.imgur.com/7ko9Qn6.gif)

```swift
//: Playground - noun: a place where people can play
```

On the first line, we have a comment. Comments will be ignored when programs are executed. They serve more as a reminder or notice for other developers. We can create a comment by prefixing our comment with '//' and the rest of the line will turn into a comment.

```swift
import UIKit
```

The import UIKit means that we are including all of the **Application Programming Interfaces (APIs)** made available to iOS and Mac developers by the **UIKit framework**. APIs are just **classes and functions written by someone** that we can use. We have to follow certain instructions depending on what API we are using to make our program run. **Utilizing Apple's APIs is a key component in becoming an effective developer**. We will be directed to Apple's documentation throughout the course so that we can practice learning new skills from reading the documentation. Spend no more than 10 minutes perusing through [UIKit Framework Reference](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIKit_Framework/). 

```swift
var str = "Hello, playground"
```

We declare a variable in swift with the keyword var. **A variable should only hold data that is going to change.** If the data is not going to change, we should not be using a variable. Inside the variable _'str_' we are going to assign the value _"Hello, playground"._ The quotations mean that we are creating an **instance of the String Type**. Strings are ordered **collections of characters**. We named our variable _str_ but we could have given it any other name.

```swift
str += " you are so cool"
```

Here we are adding two instances of the String Type together to create a new instance of String. This is a shorthand way (compound assignment operator) of adding instances of String Type this way:

```swift
str = str + " you are so cool"
```

Here's a quick warning on creating instances of Strings. **Creating instances of String Type does not work with single quotes.**

```swift
var errorStr = 'single quotes do not work' // don't use single quotes to create instances of String
```

## print

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_2637/handouts/chapter2637_3609_print.gif)

We can print out our variables using a **print** function which is a function used to print a value to the console followed by a line break. To see the output we can click the small up arrow on the bottom left of the playground. Before we move on further let's read the Basic Operators overview, Terminology, Assignment Operator, Arithmetic Operators, Compound Assignment Operators in [Basic Operators](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/BasicOperators.html#//apple_ref/doc/uid/TP40014097-CH6-ID60).