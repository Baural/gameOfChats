//
//  ViewController.swift
//  gameOfChats
//
//  Created by Baur on 7/28/18.
//  Copyright © 2018 Baur. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Назад", style: .plain, target: self, action: #selector(handleLogout))
        
        // user is nor logged in
        if FIRAuth.auth()?.currentUser?.uid == nil {
            perform(#selector(handleLogout) , with: nil, afterDelay: 0 )
        }
    }
    @objc func handleLogout() {
        do {
            try  FIRAuth.auth()? .signOut()
        } catch let logoutError{
            print(logoutError)
        }
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil )
        
    }
    
}

