//
//  SceneDelegate.swift
//  FBTabBarControllerExample
//
//  Created by Caleb Rudnicki on 5/19/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import UIKit
import FBTabBarController

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        
        let fbTabBarController = FBTabBarController()
        fbTabBarController.tabBar.tintColor = .red
        
        let firstViewController = FirstViewController()
        firstViewController.tabBarItem = UITabBarItem(title: "First",
                                                      image: UIImage(systemName: "1.circle.fill"),
                                                      tag: 0)
        
        let secondViewController = SecondViewController()
        secondViewController.tabBarItem = UITabBarItem(title: "Second",
                                                      image: UIImage(systemName: "2.circle.fill"),
                                                      tag: 1)
        
        let thirdViewController = ThirdViewController()
        thirdViewController.tabBarItem = UITabBarItem(title: "Third",
                                                      image: UIImage(systemName: "3.circle.fill"),
                                                      tag: 2)
        
        fbTabBarController.setViewControllers([firstViewController, secondViewController, thirdViewController], animated: true)
        
        window?.rootViewController = fbTabBarController
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}

}
