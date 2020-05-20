//
//  FBTabBarController.swift
//  FBTabBarController
//
//  Created by Caleb Rudnicki on 5/19/20.
//  Copyright © 2020 Caleb Rudnicki. All rights reserved.
//

import UIKit

public class FBTabBarController: UITabBarController {
    
    // MARK: Properties
        
    private let indicatorPlatform = UIView()
    
    // MARK: Init
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
    }
    
    open override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        setupIndicatorPlatform()
    }
    
    // MARK: UITabBarDelegate
    
    public override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
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
        indicatorPlatform.backgroundColor = tabBar.tintColor
        indicatorPlatform.frame = CGRect(x: 0.0, y: 0.0, width: tabBarItemSize.width, height: 2.0)
        indicatorPlatform.center.x = tabBar.frame.width / CGFloat(tabBar.items!.count) / 2.0
        tabBar.addSubview(indicatorPlatform)
    }

}
