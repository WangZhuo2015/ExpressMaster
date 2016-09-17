//
//  HttpClient.swift
//  ExpressMaster
//
//  Created by 王卓 on 16/9/17.
//  Copyright © 2016年 BubbleTeam. All rights reserved.
//

import Foundation
import Alamofire
class HttpClient{
    static let header = [
        "X-LC-Id":"oDSVUns9hRUR7tW0BUXaRLX2-gzGzoHsz",
        "X-LC-Key":"gLtHI6argpgNPEtTR3WvCKI2",
        "X-LC-Prod":"1"
    ]
    class func invokeGet (
        url:String,
        parameters:[String: Any]? = nil,
        complete:@escaping (_ response: Data?, _ error: Error?) -> Void){
        Alamofire.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: header).responseJSON { (response) in
            complete(response.data,response.result.error)
        }
    }
    
    class func invokePost (
        url:String,
        parameters:[String: Any]? = nil,
        complete:@escaping (_ response: Data?, _ error: Error?) -> Void){
        Alamofire.request(url, method: .post, parameters: parameters, encoding: URLEncoding.httpBody, headers: header).responseJSON { (response) in
            complete(response.data,response.result.error)
        }
    }
}
