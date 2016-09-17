//
//	UserAPIBase.swift
//  on 17/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class UserAPIBase : NSObject{

	var result : UserLoginInfo!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let resultData = dictionary["result"] as? NSDictionary{
			result = UserLoginInfo(fromDictionary: resultData)
		}
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if result != nil{
			dictionary["result"] = result.toDictionary()
		}
		return dictionary
	}
}
