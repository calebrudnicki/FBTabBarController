# FBTabBarController

`FBTabBarController` is a easy-to-use UITabBarController to make any app's tab's looks like the Facebook iOS app. No need to struggle with custom tab bars to achieve the floating platform indicator. Just use this library to get your project off of the ground quickly!

Facebook iOS app:

<img src="https://media.giphy.com/media/iDBudPIGhwfysYTiuu/giphy.gif">

See the [Georgia Tech Hockey App](https://github.com/calebrudnicki/gthockey-iOS) for use of `FBTabBarController` in the wild:

<img src="https://media.giphy.com/media/kdKmtP9Y8XYJJ63BHs/giphy.gif" height="380px">

## Installation

### Cocoapod

1. Add a pod entry for JacquardToolkit to your Podfile: 
```sh
    pod 'FBTabBarController'
```
2. Update your Popdfile by running:
```sh
    pod update
```
3. Don't forget to include the necessary import statement in your target class:
```sh
    import FBTabBarController
```

### Locally

1. Create a new file in your desired folder within your project

2. Copy the contents from [FBTabBarController.swift](https://github.com/calebrudnicki/FBTabBarController/blob/master/FBTabBarController/FBTabBarController/FBTabBarController.swift) into your local file.

## Development

The setup and use is very similar to how you would work with a normal `UITabBarController`. Here is a setup in the simplest form:

```sh
    let fbTabBarController = FBTabBarController()
    
    let firstViewController = FirstViewController()
    firstViewController.tabBarItem = FBTabBarItem(title: "First",
                                                  image: UIImage(systemName: "1.circle.fill"),
                                                  tag: 0)
       
    let secondViewController = SecondViewController()
    secondViewController.tabBarItem = FBTabBarItem(title: "Second",
                                                   image: UIImage(systemName: "2.circle.fill"),
                                                   tag: 1)
        
    let thirdViewController = ThirdViewController()
    thirdViewController.tabBarItem = FBTabBarItem(title: "Third",
                                                  image: UIImage(systemName: "3.circle.fill"),
                                                  tag: 2)
        
    fbTabBarController.setViewControllers([firstViewController, secondViewController, thirdViewController], animated: true)
```

There are two ways to customize the color of your `FBTabBarController`.

#### 1. One color for all tabs by setting the `tintColor` of `fbTabBarController`
<img src="https://media.giphy.com/media/j2kIrMJCKxIsoVR4yk/giphy.gif">

```sh
    fbTabBarController.tabBar.tintColor = .systemRed
```

#### 2. One color for each specific tab by setting the `tintColor` of `FBTabBarItem`
<img src="https://media.giphy.com/media/htXh82hSZc9A830tkd/giphy.gif">

```sh
    firstViewController.tabBarItem = FBTabBarItem(title: "First",
                                                  image: UIImage(systemName: "1.circle.fill"),
                                                  tag: 0,
                                                  tintColor: .systemBlue)
```

Add as many or as little customizations as you want.

---

Requires a minimum version of iOS 13.0.

Be sure to checkout the [FBTabBarControllerExample](https://github.com/calebrudnicki/FBTabBarController/tree/master/FBTabBarControllerExample) for a working project.

### Want to contribute?!
This is an open-source project so any additions, fixes, or cool new ideas are welcomed! If you have interest in contributing to `FBTabBarController`, be sure to create your own fork of the repo and then submit a pull request when you are done.

License
----
MIT

---

📍 Made in PDX | 🌲 ☕️ 👟
