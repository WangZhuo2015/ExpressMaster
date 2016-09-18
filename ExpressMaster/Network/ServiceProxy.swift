//
//  ServiceProxy.swift
//  ExpressMaster
//
//  Created by 王卓 on 16/9/17.
//  Copyright © 2016年 BubbleTeam. All rights reserved.
//

import Foundation

enum RequestResult{
    case success
    case fail(String)
}


class ServiceProxy{
    
    //MARK: -Tool Function
    fileprivate static func isError(dic:NSDictionary)->Bool{
        return (dic["result"] as! NSDictionary)["message"] as! String != "OK"
    }
    
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
    
    fileprivate static func getSendOrderURL() -> String {
        return ServiceEndpointBase + "sendOrder"
    }
    
    fileprivate static func getAcceptOrderURL() -> String {
        return ServiceEndpointBase + "acceptOrder"
    }
    
//    fileprivate static func getAcceptOrderURL() -> String {
//        return ServiceEndpointBase + "acceptOrder"
//    }
    
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
        complete:@escaping (_ userInfo: UserLoginInfo?, _ error: Error?) -> Void){
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
    
    
    
    
    internal static func userSignUp(
        userName:String,
        password:String,
        phone:String,
        complete:@escaping (_ isSuccess:RequestResult, _ error: Error?) -> Void){
        HttpClient.invokePost(url: getSignUpURL(), parameters: ["username":userName,"password":password,"phone":phone]) { (response, error) in
            do{
                if let data = response{
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                    if json["error"] == nil{
                        complete(.success,nil)
                    }else{
                        complete(.fail(json["error"] as! String),error)
                    }
                    
                }
            }catch{
                complete(.fail("错误"),error)
            }
            print(response)
        }
    }
    
    
    internal static func sendOrder(
        sessionToken:String,
        waybill:String,
        expressCompany:String,
        orderScore:String,
        orderNote:String,
        //locationID:String,
        complete:@escaping (_ orderInfo: SendOrderAPIBase?,_ isSuccess:RequestResult, _ error: Error?) -> Void){
        HttpClient.invokePost(url: getSendOrderURL(), parameters: ["sessionToken":sessionToken,
                                                                "waybill":waybill,
                                                                "expressCompany":expressCompany,
                                                                "orderScore":orderScore,
                                                                "orderNote":orderNote]) { (response, error) in
            do{
                if let data = response{
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                    if json["error"] == nil{
                        complete(SendOrderAPIBase(fromDictionary: json["result"] as! NSDictionary),.success,nil)
                    }else{
                        complete(nil,.fail(json["error"] as! String),error)
                    }
                    
                }
            }catch{
                complete(nil,.fail("错误"),error)
            }
            print(response)
        }
    }

    
    
    
    internal static func acceptOrder(
        sessionToken:String,
        id:String,
        complete:@escaping (_ isSuccess:RequestResult, _ error: Error?) -> Void){
        HttpClient.invokePost(url: getAcceptOrderURL(), parameters: ["sessionToken":sessionToken,"id":id])
        { (response, error) in
            do{
                if let data = response{
                    let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! NSDictionary
                    if json["error"] == nil{
                        complete(.success,nil)
                    }else{
                        complete(.fail(json["error"] as! String),error)
                    }
                    
                }
            }catch{
                complete(.fail("错误"),error)
            }
            print(response)
        }
    }
}
