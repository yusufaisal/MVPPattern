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
        let p2pTabbarCoordinator = P2PTabbarCoordinator(presenter: self.navigationController!)
        p2pTabbarCoordinator.start()
    }
    
}

