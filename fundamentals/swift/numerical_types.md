# Int

**There are unlimited numbers of numbers and a limited number of bits**. There is a minimum and maximum value that an instance of an _Int Type_ can represent. _Int Type_ is signed in Swift. What this means is that **it uses some of its possible representations to store negative numbers**. Let's see what the maximum value and minimum value of the Int Type is in Swift:

```swift
print("The maximum value \(Int.max)")
print("The minimum value \(Int.min)")
```

On OS X (the desktop operating system) allocates 64 bits to store an _Int Type_. On iOS, this is different because some devices store _Int Types_ in 64 bits while older models such as the iPhone 5 utilize the 32-bit infrastructure. This seems like a big headache. Does that mean we have to write different code for different devices? **If we use the instances of the Int Type, the compiler will determine the appropriate size for an Int when it builds your program.**

## Int32

We can have an Int be stored in 32 bits by creating an instance of _Int32 Type_. It is important to note that _Int_ and _Int32_ are different Types. _Int32_ is also signed. Let's see what the maximum and the minimum value of _Int32_ are.

```swift
print("The maximum value \(Int32.max)")
print("The minimum value \(Int32.min)")
```

There's also similar Types available such as _Int8, Int16,_ and _Int64_. We only use these specific integer types when we are doing something like cryptography where the way integers are stored is important. We will also run across these types when we are interacting with libraries built when storing 32 bits for an integer was very common. **Most of the time you will simply use the _Int_ type**

## UInt32

We also have the unsigned integer counterparts as well. Once again we should only be using these specific Integer type when the nature of our program forces us to. **We should use Int for all other cases and let the compiler decide how much memory to allocate when storing integers.**

```swift
print("The maximum value \(UInt32.max)")
print("The minimum value \(UInt32.min)")
```

## Swift is Strongly Typed

_Int, Int32, UInt32_ and all of the other variations of storing integers are all different types. What this means is that if we declare a constant or a variable to be of a specific Type, we can't assign a different type to it, even though they are just numbers.

![](http://i.imgur.com/k6zEyyo.png)

**We want to use Int consistently throughout our code** so that we can leave the hard work to the compiler. We can convert other variations of the _Int Type_ by using this syntax:

```swift
var myInt32: Int32 = 3
var myNormalInt: Int
                     // This will not error, because we first convert Int32 to instance of Int Type
myNormalInt = Int(myInt32)
```

# Floating Point Numbers

**There is a finite number of bits a computer has to represent: an infinite amount of numbers**. So how would a computer represent something like 1/3 which is .3333333 with 3's repeating until forever? A computer will try to do its best. The most important concept in this tab is the **while _Int's_ are precise, Floating Point Types are not**.

## Double vs. Float

Swift has two Types to represent numbers with decimals. The first is the **Double Type** which allocates 64 bits to represent a floating point number and the second is the **Float Type** which allocates 32 bits to represent a floating point number. Since a _Double Type_ **has more representations available** to it, it will **store the floating point number more precisely**. Rather than the _Int Type_ where the bits represented how many_ Int's_ it can represent, the extra bits for floating point numbers just represent its precision.

## Double Is the Inferred Type

If we store a floating point number to a variable or a constant **Swift will automatically assume that it is a Double**. Just like how we want to use _Int's_ in our code as much as possible, we want to **use Doubles as much as possible so we can rely on Swift's type inference.**

![](http://i.imgur.com/i0VTX7X.png) 

## Operations

We can perform basic operations in Swift such as addition, subtraction, multiplication, and division. 

```swift
print("Addition \(1 + 3)")
print("Subtraction \(1 - 3)")
print("Multiplication \(1 * 3)")
print("Division \(1 / 3)")
```

When we divide an instance of the _Int Type_ with another instance of the _Int Type_, we get another new instance of the _Int Type_. Then what will happen if we divide 1 with 3? We would expect the result to be something like .33333333.  **It results in zero because remember that Int's can only be whole numbers.** If there are decimal points then there is a different _Data Type_ for that. If we divide two _Int's_ together and its result should be represented in a decimal, Swift will just round the number down(even if it's 8.9999).