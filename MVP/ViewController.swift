//
//  ViewController.swift
//  MVP
//
//  Created by iSal on 10/03/20.
//  Copyright © 2020 iSal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionKoinRobo(_ sender: Any) {
        self.performSegue(withIdentifier: "goToKoinRobo", sender: nil)
    }
    
    @IBAction func actionKoinP2P(_ sender: Any) {
        let dashboardViewCoordinator = P2PDashboardViewCoordinator(presenter: self.navigationController!.self)
        dashboardViewCoordinator.start()
//        let dashboardVC = P2PDashboardViewController()
//        let nav = UINavigationController(rootViewController: dashboardVC)
//        nav.title = "KoinP2P"
//        self.navigationController?.present(nav, animated: true, completion: nil)
    }
    
}

