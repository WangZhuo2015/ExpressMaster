//
//  UserAPIBase.swift
//  ExpressMaster
//
//  Created by 王卓 on 16/9/17.
//  Copyright © 2016年 BubbleTeam. All rights reserved.
//

import Foundation
class UserAPIBase : NSObject{
    
    var sessionToken : String!
    var userid : String!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        sessionToken = dictionary["sessionToken"] as? String
        userid = dictionary["userid"] as? String
    }
    
    /**
     * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> NSDictionary
    {
        let dictionary = NSMutableDictionary()
        if sessionToken != nil{
            dictionary["sessionToken"] = sessionToken
        }
        if userid != nil{
            dictionary["userid"] = userid
        }
        return dictionary
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        sessionToken = aDecoder.decodeObject(forKey: "sessionToken") as? String
        userid = aDecoder.decodeObject(forKey: "userid") as? String
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encodeWithCoder(aCoder: NSCoder)
    {
        if sessionToken != nil{
            aCoder.encode(sessionToken, forKey: "sessionToken")
        }
        if userid != nil{
            aCoder.encode(userid, forKey: "userid")
        }
        
    }
    
}
