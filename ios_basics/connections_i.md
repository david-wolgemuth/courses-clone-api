# Connections I

**Now that we finished building our UI and properly laid it out using Auto Layout, we can start thinking about the implementation of the app**. First, let's make the necessary connections between our scene and our View Controller code.

## Outlets

We are going to create two Outlets. **We want an Outlet for the question label and the answer label because we want to be able to change the text inside of these labels in our application**. For example, if the user clicks next, we want to display the text of the next question. We do this by control dragging from the storyboard to the View Controller.

![](http://i.imgur.com/ieLJmQ2.gif)

**Now that the labels are wired up, we can change its value in our code.** The labels have a property called text that we can change. **The viewDidLoad() method gets called automatically once our view has loaded**. This is a good place to do some set-up code. Once this message is sent to our View Controller, we will change the text properties of the labels which will result in our application displaying the correct question and answer.

![](http://i.imgur.com/W383YQp.gif)