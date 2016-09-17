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
    
    
    internal static func userLogin(
        userName:String,
        password:String,
        complete:@escaping (_ PlayerInfo: UserAPIBase?, _ error: Error?) -> Void){
        HttpClient.invokePost(url: getLoginURL(), parameters: ["username":userName,"password":password]) { (response, error) in
            do{
                if let data = response{
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                    complete(UserAPIBase(fromDictionary: json),error)
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
