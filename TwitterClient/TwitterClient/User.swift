//
//  User.swift
//  TwitterClient
//
//  Created by DINGKaile on 10/29/16.
//  Copyright © 2016 myPersonalProjects. All rights reserved.
//

import UIKit

class User: NSObject {

    var name: String?
    var screenName: String?
    var profileUrl: URL?
    var tagline: String?
    
    var dictionary: NSDictionary?
    static var _currentUser: User?
    static let userDidLogoutNotifcation = "UserDidLogout"
    
    init(dictionary: NSDictionary) {
        self.dictionary = dictionary
        
        self.name = dictionary["name"] as? String
        self.screenName = dictionary["screen_name"] as? String
        let profileUrlStr = dictionary["profile_image_url_https"] as? String
        if profileUrlStr != nil {
            self.profileUrl = URL(string: profileUrlStr!)
        }
        self.tagline = dictionary["description"] as? String
        
    }
    
    class var currentUser: User? {
        get {
            if self._currentUser == nil {
                let defauts = UserDefaults.standard
                let userData = defauts.object(forKey: "currentUserData") as? Data
                if let userData = userData {
                    let dictionary = try! JSONSerialization.jsonObject(with: userData, options: []) as? NSDictionary
                    self._currentUser = User(dictionary: dictionary!)
                }
            }
            
            return self._currentUser
        }
        
        set(user) {
            self._currentUser = user
            let defaults = UserDefaults.standard
            
            if let user = user {
                let data = try! JSONSerialization.data(withJSONObject: user.dictionary!, options: [])
                defaults.set(data, forKey: "currentUserData")
            } else {
                defaults.set(nil, forKey: "currentUserData")
            }
            defaults.synchronize()
        }
    }
    
    
}
