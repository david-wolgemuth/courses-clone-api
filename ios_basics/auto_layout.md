# Auto Layout

Let's go back to our _iwanttoplaymystoryboards_ application to demonstrate how Auto Layout can be used. Afterward, we are going to apply Auto Layout again to our iOSQuiz application. **The best way to learn Auto Layout is to keep practicing**. Some people say Auto Layout is the **hardest part about iOS programming and it isn't uncommon to find yourselves spending hours laying out your application and end up deleting all of the constraints and starting over.** You will find plenty of developer frustration over Auto Layout on the Web and it is because **it really pushes developers to think about design differently**. Auto Layout has gotten better over the years and it is a crucial skill for us to master if we want to create one layout that will work across devices and orientations.

<iframe src="https://player.vimeo.com/video/142831211" width="500" height="281" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen=""></iframe>

Go to  [Auto Layout Guide](https://developer.apple.com/library/prerelease/watchos/documentation/UserExperience/Conceptual/AutolayoutPG/AutoLayoutConcepts/AutoLayoutConcepts.html#//apple_ref/doc/uid/TP40010853-CH14-SW1) and read the Introduction, Auto Layout Concepts, and Working with Constraints in Interface Builder. **At first, it may seem like Auto Layout is slowing you down**. It takes time thinking about design in this way. We set specific constraints in our View objects in our storyboard **so that they would know how to adapt depending on screen size and orientations (portrait vs. landscape).** Auto Layout is more important now as Apple has moved on to creating products in all shapes and sizes.

Imagine the world without Auto Layout. We would have to create a different layout for all devices and a different one for each orientation. Can you imagine creating a different layout every time a new Apple product is released? **As developers, we need to accept the uncertainty of the various future products Apple will introduce and make sure that the applications that we make can adapt to these new environments**. We set constraints on our View objects so that they know how to adapt to its environment.

When we ran our current application, it does not look at all like how we laid it out in the storyboard. And why is our scene so square?! Apple wants us to think about design differently; instead of placing things based on fixed screen width, we create rules for our view objects to adapt to any given scenario. 

![](http://i.imgur.com/TMMrY8s.png)

There are 4 tools available to use in Auto Layout

*   Align popover
*   Pin popover
*   Resolve menu
*   Resizing Behavior menu

## Step 1 [gif-walkthrough](http://i.imgur.com/caHj95B.gif)

We will be setting constraints on our question label first. **Constraints can either be set between two different View Objects or onto itself**. Our goal is to set just enough constraints so that Xcode will know how to layout our application no matter the screen size or orientation. If we add too much or too little, Xcode will complain to us. **We are going to set the first constraint onto the question label itself**. We are going to give Horizontal Center in Container constraint to our question label by first clicking on the label, adding the constraint in our **Align popover** menu.

After we place this constraint, Xcode will complain to us by giving us orange lines. **This is Xcode telling us that our layout is ambiguous: there's more than one possible layout given the constraints**. This is because Xcode can place the question label anywhere as long as it is horizontally centered. We are going to set three more constraints. We are going to "pin" the question label to the top, left, and right using the third icon with a measurement of 0 in our **Pin popover** menu. **In the Auto Layout video, we did these steps by control dragging from one object to the object we wanted to create a constraint with. This is just an alternate way and some developers prefer just using the Pin popover menu because it is less error prone when our layout is very complicated.**  Since we have "Constrain to margin" selected, question label will go as close as the recommended margin. Then we will set our Lines attribute of our question label to 0 so that the label can move on to the next line if the question is long. **If you are getting warnings regarding frames, click on Resolve menu and click update frames. What the warning is telling you is that given the current constraints, the View Objects might not be placed where you might expect.**

## Step 2: [gif-walkthrough](http://i.imgur.com/Ue9zVPB.gif)

Now let's add constraints to our buttons. First, we want to pin the Answer button with a left value of 0 and top value of Standard Value in our **Pin popover** menu. **Standard Value is the same as 8, but try using Standard Value as much as possible**. **It is important to note that the constraint to the left is different from the constraint to the top in this example.** The first constraint is a **relationship between the Answer button and the super view**. We want the Answer button to be 0 points away from the super view that is the parent view of all subviews. On the other hand, the second constraint is a **relationship between the Answer button and the question label**. We want to be Standard Value away. We can observe and even choose which View objects we want to have a relationship in the same drop-down menu in the Pin Popover.

## Step 3: [gif-walkthrough](http://i.imgur.com/lYwbe3i.gif)

Next, we need to make sure our Next button is laid out properly. We are going to do this by creating a relationship between Answer button and Next button by giving them a baseline constraint in our **Align popover** menu. This means that their baselines will always match up. Now we could pin the Next button to the top and to the right, but we only have to pin it to the right in this case. This is because since the Answer button is already pinned to the top, and has to have matching baselines with Next, Xcode has enough information to place the Next button.

## Step 4: [gif-walkthrough](http://i.imgur.com/TAWlhu1.gif)

Now we just have to place the answer label properly. We are going to give 2 constraints to itself by giving it the Horizontal and Vertical Center to Container. This is creating a relationship between the answer label and the super view. Then we are going to pin the left and the right with a value of 0\. Now Xcode has enough information to layout our UI.

## Strategies

**Pick one of the top corners and work towards the opposite corner. **Add constraints to the top left most view and move to the bottom right. If we jump around we are bound to overlook something. **Auto Layout is a delicate process and there will be many times where it might just be easier to start all over.**

We can either run and build your app each time but it is more convenient to have a preview pane open so that you can see our changes in real time. Try to avoid reset to suggested constraints.

After we have set all of the constraints open up the size inspector to for each View object and see if you can find any numbers that are not 0 or a Standard Value. Try to use these as much as possible.  If we are doing something other than the standard we should think very carefully if that is really needed.