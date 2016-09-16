# Connections II

Setting up an Outlet is **connecting a property from code to a View object** on the Storyboards. Setting up an Action is similar but it is **connecting a method from code to an event that a user can trigger by interacting with one or more View objects**.

## Actions

Now let's set up Actions for our buttons. **Once the user touches the button and releases the finger within the bounds of the button, we want to trigger some lines of code**. For example, when the Answer button is clicked, we might want to to display our Answer label. We specify that the View object that is going to trigger this event is going to be a UIButton. The default is AnyObject but that is too vague. **We want to explicitly state that a UIButton is going to trigger this event.** Then when this code is triggered, the sender object will be passed into the block of code which would be the UIButton that alerted the View Controller about an event.

Here, we specify the Type to be UIButton only because this describes our IBAction a little better. We are saying that this action is going to get triggered by a UIButton. Once the method gets called, it passes a sender argument which is the View object that triggered this action. We can leave it at AnyObject and our code will still work but it is good practice to be more descriptive when we can.

![](http://i.imgur.com/fC1DskU.gif)

Now we can write the lines of code that we want to execute when someone touches up inside our different buttons. We will just log out that a particular button was pressed for now. We will be able to see the results of the log in our Debug Area of our Xcode.![](http://i.imgur.com/Ewl3vYu.gif)