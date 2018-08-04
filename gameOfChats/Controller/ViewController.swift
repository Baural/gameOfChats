//
//  ViewController.swift
//  gameOfChats
//
//  Created by Baur on 7/28/18.
//  Copyright © 2018 Baur. All rights reserved.
//

import UIKit

class ViewController: UITableViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    @objc func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil )
        
    }
    
}

