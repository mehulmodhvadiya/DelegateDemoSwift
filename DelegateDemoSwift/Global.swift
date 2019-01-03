//
//  Global.swift
//  DelegateDemoSwift
//
//  Created by Verve Mac on 29/10/18.
//  Copyright © 2018 Verve Mac. All rights reserved.
//

import Foundation


// refrenece type
class LearnSwift {
    
    var name:String?
    var LastName:String?
    
    init(name:String,LastName:String) {
        self.name = name
        self.LastName = LastName
    }
    
    func joinTwoString(name:String,LastName:String) -> String {
        return (name+LastName)
    }
}
struct User {
    var username: String
    var email: String
    var name: String
}
// value type

struct LearnNewStructure
{
    var name:String?
    var lastname:String?
    
//    func joinTwoString(name:String,LastName:String) -> String {
//        return (name+LastName)
//    }
}
