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
    var userEmail = ""
    var userSex = true
    var userNickname = ""
    var userStudentID = ""
    var userState = true
    var phone = ""
    var adress = ""
    var personalSign = ""
    var point = ""
    var mobilePhoneVerified = false
    var emailVerified = false

    
    
    
    func login(userName:String,password:String,successHandle:@escaping ()->Void,failHandle:@escaping (_ reaon:String?)->Void){
        ServiceProxy.userLogin(userName: userName, password: password) { (user, error) in
            if user != nil{
                self.userName = user?.userNickname ?? ""
                self.userID = user!.userID
                self.sessionToken = user!.sessionToken
                successHandle()
            }else{
                failHandle(error.debugDescription)
            }
        }
    }
}
