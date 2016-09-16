# User Interface First

**Xcode is designed so that we build the user interface first. Always design how you want the UI to look and then figure out how to make it work with the code.** XCode is perfectly made for this workflow. **We can build our UI by dragging and dropping things such as Labels and Buttons from our Object library**. The reason why we build the UI first is that after we build the UI **we will be able to have a better understanding of our application and, therefore, waste less time figuring out how to make it work.**

## Building our Interface

Click on Main.storyboard and place a Label in the center-top of the square view. Double click on the Label and replace the text inside with "What is the first step to iOS development?" You might be wondering why we lay out our UI on a square screen. There are no devices (except for Apple Watch) that have square screens. The Apple Watch is a perfect example why we can no longer think about designing our UI for a specific screen size. **We don't know what kind of products Apple will release, and we already have multitudes of Apple products with varying screen sizes. By designing our UI in a square canvas helps us think about layout in terms of constraints rather than exact placement.** We will be placing constraints using Auto Layout in the next tab.

![](http://i.imgur.com/AOth9XP.gif)

**When we are initially placing View objects into the Storyboard, try to use the guided blue lines as much as possible. This is XCode helping us make better UI.** Next, we are going to drag two buttons out of the Object Library. We can drag and drop the buttons just like we did with the label. One button will be to the left with the text "Answer" and the other button will be to the right with the text "Next." 

![](http://i.imgur.com/MIkGJVw.gif)

Now we are going to drag and drop another Label in the center of the screen with the following text: "Create the user interface. As we create the UI, we will get a better understanding of our application. Then we breathe life into our application." With default settings, our Label will go off the screen as it tries to fit all of the text in one line. First, we will have to click on the Label and then go to the Utility Area, select the Attributes Inspector and change the number of lines to be 0\. Once it is set to 0, XCode will wrap the text around once it hits the width of the containing label. We can also set the text here instead of double clicking on the label. 

![](http://i.imgur.com/a9geJ24.gif)

We are done with building our UI! Kind of. Go ahead and press Command + R to build and run your application. **The results might not be what you were expecting. To fix this, we have to add constraints with Auto Layout.**