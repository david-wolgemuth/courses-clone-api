# Xcode

Go to [About XCode](https://developer.apple.com/library/ios/documentation/ToolsLanguages/Conceptual/Xcode_Overview/index.html#//apple_ref/doc/uid/TP40010215-CH1-SW1), read all of "At a Glance" and download the latest version of XCode from the Mac App Store. We need to know XCode well. This is where we will spend all of our time building our iOS applications. The main parts of XCode are **Toolbar**, **Navigator**, **Jump Bar**, **Utility Area**, **Editor Area,** and **Debug Area**. 

![](http://i.imgur.com/FGI1hqc.png)

## Our First Application

**The best way to learn iOS is by building applications**. Let's go build our first iOS app and name it "iOSQuiz". **Go ahead and click create a new project**.

![](http://i.imgur.com/AlUlb6j.gif)

When we clicked, create a new project. A template selection window will show. Here we can choose a project template to use as a starting point of our application. We will be using the **Single View Application** for our first application. Then we will be directed to the project options sheet where we have to specify these fields:

*   **Product Name**: This will be the name of our folder that holds the files to our application
*   **Organization Name**: XCode automatically inserts a copyright notice into every source code file you create
*   **Organization Identifier**: Use reverse domain name notation (i.e. com.codingdojo)
*   **Bundle Identifier**: XCode combines the Product Name and Company Identifier to generate a unique Bundle Identifier
*   **Language**: We will be using Swift.
*   **Devices**: XCode wants to know what types of devices we are building the application for
*   **Use Core Data**: Leave this unchecked for now. Core Data is one of the ways we can make data persist in our applications

## Toolbar

![](http://i.imgur.com/s7WOHso.png)

1.  On the left side of the toolbar, we have iTunes like button. **The play button starts building and running our application while the stop button stops it**. 
2.  We can also specify where to run our application to the right of the stop button. **We can either run the application on one of our devices or a host of simulators that XCode provides for us**. 
3.  The box in the middle of our XCode is called the activity view. **Activity View displays and actions or processes that are currently happening**.
4.  On the right of the Toolbar, we have a section for selecting what kind of editor we want to use and also a series of three buttons that help us maintain the screen real estate on our screen. Currently, the standard editor is selected and it gives you a single pane dedicated to editing a file. **The Venn-diagram button next to the standard editor button splits the editor into two panes and Xcode will try to display two relevant files to you**. If you don't like what XCode gives you, **you can always control which files to display on either screen with the Jump Bar (explained later in the tab)**. You can also select the version editor which is useful when we want to compare different versions of your app when we use source control. 

![](http://i.imgur.com/ICaJrll.gif)

## Navigator

The Navigator is the left-hand side of your XCode. Here we can seamlessly navigate through different aspects of our application. Here are the 8 Navigators available in the Navigator section. We can either click on the icons or we can use Command + 1 to access the Project Navigator (the first one), Command + 2 to access the Symbol Navigator, and so on.

*   **Project Navigator**: List of files that are used in our project.
*   **Symbol  Navigator**: Symbols are items that the compiler recognizes such as classes, enumerations, and structs.
*   **Find Navigator**: We can find and replace any part of your application from one search bar.
*   **Issue Navigator**: Whenever our application fails to build and run we can check out the errors or warnings here.
*   **Test Navigator**: We can run our unit tests here.
*   **Debug Navigator**: This is where we will go to debug our application. There are tools that keep track of memory, CPU, and the stack frame. A stack frame is a list of functions that have been called, in the order they were called. If you click on any aspect of the stack frame, we can observe the environment of our application right after that function was called.
*   **Breakpoint Navigator**: We can make breakpoints in any part of our code so that we can look at the values in variables during that specific time in the life cycle. This is where we can look at all of our breakpoints from one place.
*   **Log Navigator**: The Log Navigator keeps a history of recent build results and runs logs.

![](http://i.imgur.com/yxr75j6.gif)

## Jump Bar

![](http://i.imgur.com/QiK0neQ.png)

1.  We can access our recent files here, as well as the list of counterparts, superclasses, subclasses, and more.
2.  The back arrow goes back one file and forward arrow undoes a back arrow. They work in the same way as our browsers.
3.  This part of the jump bar allows us to navigate files without using the navigator. This area has a segmented pop-up that displays the hierarchical path to reach the selected file in the project. We can click on different parts of the segmented pop-up and XCode will navigate us there.

## Utility Area

![](http://i.imgur.com/HkmuS9H.png)

1.  The upper part of the Utility Area is a **context sensitive panel** which will give you a more detailed information of whatever is being displayed in the editor pane. You can also make changes here depending on what you have selected. For example, if you have a button selected in the editor area, you will be able to change some of its attributes such as size, text, background color in this panel. When a file such as _ViewController.swift_ (we have this clicked in the picture to the left) is in the editor pane, the inspector selector bar will have two different icons, one that looks like a paper, and one with a question mark on it. The paper icon specifies the File inspector where we can view and manage metadata for a file such as its name, type, and path. The question icon specifies Quick Help which gives us details about a symbol. **This is a great place to learn more about specific API classes that we are unsure of.** When we select objects in the Interface Builder, we are given additional selectors. We will go over these more thoroughly later in the chapter.
2.  The lower part of the Utility Area is where we can **drag and drop different kinds of resources to our project**. One of the primary usages of this part of the Utility Area is the Object Library which is what is selected in the picture to the right. This is where we can drag and drop UI elements onto our Storyboard (discussed later). Things that can be dragged and dropped from this area are File templates, Code snippets, Objects, and Media files.  

## Editor Area

![](http://i.imgur.com/SxWzDPT.png)

**We will either be working with Swift code or the Interface Builder in the Editor Area**. This is where most of our work will be done. We can also display different editors by choosing different editors in the Toolbar mentioned above. We will be going over the Interface Builder more in depth in the next tab as we build out the UI of our application.

## Debug Area

<div>

![](http://i.imgur.com/xH9ld2t.png)

The left side of the Debug Area is where we can closely observe values in specific variables during a breakpoint in our application. The right side of the Debug Area is where we can see any of our logs that we put in our application. **We log during different parts of the application so that we know that something is hooked up properly or not.**

</div>