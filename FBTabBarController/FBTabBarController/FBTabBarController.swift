//
//  FBTabBarController.swift
//  FBTabBarController
//
//  Created by Caleb Rudnicki on 5/19/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import UIKit

class FBTabBarController: UITabBarController {
    
    // MARK: Properties
    
    private let indicatorPlatform = UIView()
    private let vc1 = UIViewController()
    private let vc2 = UIViewController()

    // MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vc1.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "doc.text"), tag: 0)
        vc2.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person.2"), tag: 2)

        setViewControllers([vc1, vc2], animated: true)
        
        setupIndicatorPlatform()

//        tabBar.barTintColor = .black
//        tabBar.tintColor = UIColor.gthTabBarControllerTintColor
        tabBar.isTranslucent = false
    }
    
    // MARK: UITabBarDelegate
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let index = CGFloat(integerLiteral: tabBar.items!.firstIndex(of: item)!)
        let itemWidth = indicatorPlatform.frame.width
        let newCenterX = (itemWidth / 2.0) + (itemWidth * index)

        UIView.animate(withDuration: 0.3) {
            self.indicatorPlatform.center.x = newCenterX
        }
    }

    // MARK: Private Functions
    private func setupIndicatorPlatform() {
        let tabBarItemSize = CGSize(width: tabBar.frame.width / CGFloat(tabBar.items!.count), height: tabBar.frame.height)
        indicatorPlatform.backgroundColor = .black
        indicatorPlatform.frame = CGRect(x: 0.0, y: 0.0, width: tabBarItemSize.width, height: 2.0)
        indicatorPlatform.center.x = tabBar.frame.width / CGFloat(tabBar.items!.count) / 2.0
        tabBar.addSubview(indicatorPlatform)
    }

}
