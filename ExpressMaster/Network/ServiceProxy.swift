//
//  ServiceProxy.swift
//  ExpressMaster
//
//  Created by 王卓 on 16/9/17.
//  Copyright © 2016年 BubbleTeam. All rights reserved.
//

import Foundation
class ServiceProxy{
    // MARK: -URL
    fileprivate static var ServiceEndpointBase : String {
        return "http://expressman.leanapp.cn/1.1/functions/"
    }
    
    fileprivate static func getLoginURL() -> String {
        return ServiceEndpointBase + "login"
    }
    
    fileprivate static func getSignUpURL() -> String {
        return ServiceEndpointBase + "register"
    }
    
    
    fileprivate static func isError(dic:NSDictionary)->Bool{
        return (dic["result"] as! NSDictionary)["message"] as! String != "OK"
    }
    
    
    
    /*
     {
     "result": {
     "userID": "57cedcc17db2a20068110150",
     "sessionToken": "vhoz3h7ygkd8p3284ex9bog25",
     "userEmail": "1234@qq.com",
     "userSex": true,
     "userNickname": "GGbone",
     "userStudentID": "123456789",
     "userState": true,
     "phone": "18306214367",
     "adress": "china",
     "personalSign": "我是国服第一皎月！",
     "point": 15,
     "mobilePhoneVerified": false,
     "emailVerified": false,
     "message": "OK"
     }
     }
     */
    internal static func userLogin(
        userName:String,
        password:String,
        complete:@escaping (_ PlayerInfo: UserLoginInfo?, _ error: Error?) -> Void){
        HttpClient.invokePost(url: getLoginURL(), parameters: ["username":userName,"password":password]) { (response, error) in
            do{
                if let data = response{
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                    if isError(dic: json) { complete(nil, error)}
                    else {complete(UserAPIBase(fromDictionary: json).result,error)}
                }
            }catch{
                complete(nil, error)
            }
            print(response)
        }
    }
    
//    internal static func userSignUp(
//        playerName:String,
//        complete:(_ PlayerInfo: RoleAPIBase?, _ error: NSError?) -> Void){
//        HttpClient.invokeGet(url: getSignUpURL(), parameters: ["name":playerName]) { (response, error) in
//            let json = JSON(data: response!)
//            complete(PlayerInfo: RoleAPIBase(fromJson:json), error: error)
//        }
//    }
}
