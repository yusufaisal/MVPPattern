//
//  P2PCoordinator.swift
//  MVP
//
//  Created by iSal on 10/03/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    func start()
}

class P2PDashboardViewCoordinator: Coordinator {
    
    private var presenter: UINavigationController
    private var dashboardViewController: P2PDashboardViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        self.presenter.title = "Dashboard P2P"
    }
    
    func start() {
        let dashboardViewController = P2PDashboardViewController()
        dashboardViewController.title = "KoinP2P"
        let navigation = UINavigationController(rootViewController: dashboardViewController)
        
        self.dashboardViewController = dashboardViewController
        presenter.present(navigation, animated: true, completion: nil)
    }
    
}
