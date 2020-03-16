//
//  P2PTabBarController.swift
//  MVP
//
//  Created by iSal on 15/03/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import UIKit

class P2PTabBarController: UITabBarController {
    
    private lazy var dashboard: P2PDashboardViewController = {
        let vc = P2PDashboardViewController()
        let image = UIImage(systemName: "star")
        let selectedImage = UIImage(systemName: "star.fill")
        vc.tabBarItem = UITabBarItem(title: "Dashboard", image: image, selectedImage: selectedImage)
        return vc
    }()
    
    private lazy var marketplace: P2PMarketPlaceViewController = {
        let vc = P2PMarketPlaceViewController()
        let image = UIImage(systemName: "star")
        let selectedImage = UIImage(systemName: "star.fill")
        vc.tabBarItem = UITabBarItem(title: "Marketplace", image: image, selectedImage: selectedImage)
        return vc
    }()
    
    private lazy var education: EducationViewController = {
        let vc = EducationViewController()
        let image = UIImage(systemName: "star")
        let selectedImage = UIImage(systemName: "star.fill")
        vc.tabBarItem = UITabBarItem(title: "Education", image: image, selectedImage: selectedImage)
        return vc
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let DashboardTab    = UINavigationController(rootViewController: dashboard)
        let MarketplaceTab  = UINavigationController(rootViewController: marketplace)
        let EducationTab    = UINavigationController(rootViewController: education)
        
        self.viewControllers = [DashboardTab, MarketplaceTab, EducationTab]
    }
    
    
    
    
}
