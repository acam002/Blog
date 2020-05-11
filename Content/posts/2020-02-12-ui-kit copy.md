---
date: 2020-02-01 00:48
description: How to setup Programmatic UI in XCode 11
tags: swift, uikit, xcode
excerpt: The Ball is rolling!!
---
# My Third Blog Post of the Year



As a beginner iOS developer, I wanted to learn how to do programmatic UIKit since it would help understand Apple's framework at a deeper level. One of my friends told me once I learned programmatic UIKit, Storyboards would come very easy to me.

But late last year, Storyboard projects now have a SceneDelegate and an AppDelegate. I had no idea what any of these meant and I was used to the AppDelegate class from previous versions of Xcode. I did some digging since I started a new project with Xcode 11 and I had deadlines to deal with. This is what I found.

Storyboard projects now have a SceneDelegate responsible for what is on the screen at any given moment and an AppDelegate which takes care of the application's lifecycle hooks. 


# The Project Configurations

I am going to assume you have a new project loaded up on Xcode and selected Storyboard as the User Interface.

1. Delete `Main.storyboard` in the project navigator.

2. Go to the general settings of your app in the Deployment Info section, clear out the text in the Main Interface. The text should contain 'Main'.

3. Go to `info.plist` and search for the property called Storyboard Name which should also contain the text 'Main'. Press the minus sign next to the property name and that will remove the reference to `Main.storyboard` that we deleted in step 1.

With that, we are done with project configurations. Time to move to our code changes.



# The Code Configuration

Let's take a look at the following code snippet located in `SceneDelegate.swift`. This is where we will be hooking up our custom `RootController`. 

```
func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
    guard let _ = (scene as? UIWindowScene) else { return }
}
```

The comments inside this code block gives us some nice direction. 

1. Remove the contents of  `scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)` .

2. Paste the following code:

```
guard let windowScene = (scene as? UIWindowScene) else { return }
window = UIWindow(frame: windowScene.coordinateSpace.bounds)
window?.windowScene = windowScene
window?.rootViewController = ViewController()
window?.makeKeyAndVisible()
```

Where `ViewController()` is an instance of your ViewController class included in the project.

# Testing

To finally verify that our changes were successful we can change the background color of the `ViewController` :

```
override func viewDidLoad() {
   super.viewDidLoad()
   // Do any additional setup after loading the view.
   view.backgroundColor = .systemBlue
}
```

Upon running the app we should see a blank view with a blue color.

[Photos will be added soon]
