//
//  User.swift
//  ExpressMaster
//
//  Created by 王卓 on 16/9/17.
//  Copyright © 2016年 BubbleTeam. All rights reserved.
//

import Foundation

import Foundation
class User {
    static let  sharedUser = User()
    
    var userID = ""
    var userName = ""
    var sessionToken = ""
    
    
    class func login(userName:String,password:String,successHandle:()->Void,failHandle:(_ reaon:String?)->Void){
        ServiceProxy.userLogin(userName: userName, password: password) { (User, error) in
            
        }
    }
}
