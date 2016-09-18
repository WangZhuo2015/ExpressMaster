//
//	SendOrderAPIBase.swift
//   on 18/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class SendOrderAPIBase : NSObject{
    
    var id : String!
    var message : String!
    var waybill : String!
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: NSDictionary){
        id = dictionary["id"] as? String
        message = dictionary["message"] as? String
        waybill = dictionary["waybill"] as? String
    }
    
    /**
     * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> NSDictionary
    {
        let dictionary = NSMutableDictionary()
        if id != nil{
            dictionary["id"] = id
        }
        if message != nil{
            dictionary["message"] = message
        }
        if waybill != nil{
            dictionary["waybill"] = waybill
        }
        return dictionary
    }
    
}
