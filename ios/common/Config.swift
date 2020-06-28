//
//  Config.swift
//  Shared
//
//  Created by Manly Man on 11/22/19.
//  Copyright © 2019 Innomalist. All rights reserved.
//

import Foundation

class Config {
    static var Backend: String = "http://31.220.15.49:3000/"
    
    static var Version: String {
        get {
            return self.Info["CFBundleVersion"] as! String
        }
    }
    
    static var Info: [String:Any] {
        get {
            let path = Bundle.main.path(forResource: "Info", ofType: "plist")!
            return NSDictionary(contentsOfFile: path) as! [String: Any]
        }
    }
}
