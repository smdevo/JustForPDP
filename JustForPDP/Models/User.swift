//
//  User.swift
//  JustForPDP
//
//  Created by Samandar on 27/04/24.
//

import Foundation

enum ImageName: String {
    
    case profile1 = "im1"
    case profile2 = "im2"
    case profile3 = "im3"
    case profile4 = "im4"
    case profile5 = "im5"
    case profile6 = "im6"
    
    case post1 = "post1"
    case post2 = "post2"
    case post3 = "post3"
    case post4 = "post4"
    case post5 = "post5"
    case post6 = "post6"
    
}




class User {
    var name: String
    var comment: String
    var profileImageName: String
    var postImageName: String
    
    
    init(name: String, comment: String, profileImageName: String, postImageName: String) {
        self.name = name
        self.comment = comment
        self.profileImageName = profileImageName
        self.postImageName = postImageName
    }
}


extension User {
    
    static var staticUsers: [User] = [
    
       User(name: "Samandar", comment: "Hello Everybody How are you doing today", profileImageName: ImageName.profile1.rawValue, postImageName: ImageName.post1.rawValue),
       
       User(name: "Humoyun", comment: "What's up", profileImageName: ImageName.profile2.rawValue, postImageName: ImageName.post2.rawValue),
       
       User(name: "Akbarjon", comment: "Hello Everybody How are you doing today Hello Everybody How are you doing today", profileImageName: ImageName.profile3.rawValue, postImageName: ImageName.post3.rawValue),
       
       User(name: "Sardorbek", comment: "Hello Everybody How are you doing today", profileImageName: ImageName.profile4.rawValue, postImageName: ImageName.post4.rawValue),
       
       User(name: "Rustambek", comment: "Hello Everybody How are you doing today Hello Everybody How are you doing today", profileImageName: ImageName.profile5.rawValue, postImageName: ImageName.post5.rawValue),
       
       User(name: "Ramazon", comment: "Hello Everybody How are you doing today", profileImageName: ImageName.profile6.rawValue, postImageName: ImageName.post6.rawValue),
       User(name: "Muslimbek", comment: "Hello Everybody How are you doing today", profileImageName: ImageName.profile2.rawValue, postImageName: ImageName.profile4.rawValue)
    
    
    
    ]
    
    
    
}



