//
//  User.swift
//  gameOfChats
//
//  Created by Baur on 9/1/18.
//  Copyright © 2018 Baur. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String?
    var familyname: String?
    var email: String?
    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.familyname = dictionary["familyname"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
    }
    

}
