# Stack Views

Stack views are a new addition in iOS 9 that allow us to group elements into horizontal or vertical "stacks". You can think of stacks as similar to divs in HTML that act as containers. We will be remaking the previous assignment of TicTacToe with stack views. Using Stack Views make building interfaces much easier in iOS so let's get started with them!

**_**Keep in mind stack views are not a complete replacement for auto-layout, but rather an additional tool to make the auto-layout process easier**_**

## Step 1:

Similar to HTML/CSS divs layouts we want to start by laying out the major areas of our app that will be contained in stacks first then proceed to add elements inside of them. Start by adding 4 major vertical stack sections for the top label, middle section to hold our gameboard buttons and two more for our hidden winner label and the reset button.

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3639/handouts/chapter3639_5898_1.png)

## Step 2:

From here we want to add some basic constraints to these 4 stacks. For all of the stack views, we want to add leading, trailing, top, and bottom constraints. We also want to be sure to add height values to **ALL** **BUT** the middle stack. The middle stack does not get a set height constraint due to it being the one that we want to have dynamically changed as the size of the screen and orientation shift.

## Step 3:

We can add text and buttons to the other stacks on the page as needed now. You will notice that these elements will auto size to the size of the stack they are placed in. The text for the buttons will be centered automatically, but for text in labels to be centered you just need to change the text alignment.

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3639/handouts/chapter3639_5899_2.png)

## Step 4:

Once this is done we want to change the distribution of our middle stack that will hold our gameboard buttons to "Fill Equally" so that anything added to it will take up equal percentages of the stack they are contained in. If the distribution is left to "Fill" all elements will full size to the container, overlapping each other instead of trying to share the container space.

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3639/handouts/chapter3639_5900_3.png)

## Step 5:

The next thing to do is to add three horizontal stacks that will be inside this middle vertical stack. This is done to represent the rows for the buttons. This system of embedding horizontal stacks in a vertical one or vice versa makes for an easy way of defining a grid system. **Remember these newly added stacks will be needed to be set to a Fill Equally distribution as well just like their parent.**

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3639/handouts/chapter3639_5901_4.png)

## Step 6:

We can now add our buttons to each row simply by dragging them into their respective rows (the horizontal stacks). Easy enough! With that, you can add some styling and background effects to the buttons as desired.

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3639/handouts/chapter3639_5902_5.png)

**With that, we have fully laid out our TicTacToe App that will work for any orientation.** The only additional thing is currently the buttons are completely touching so if we wanted to add something similar to the padding or margin properties typically found in CSS to the stack we just have to edit the "spacing" of these stacks. This can be done by clicking each stack and changing its spacing property found on the right-side editor.

![](http://s3.amazonaws.com/General_V88/boomyeah/company_209/chapter_3639/handouts/chapter3639_5903_6.png)