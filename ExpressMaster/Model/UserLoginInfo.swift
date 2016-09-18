//
//	UserLoginInfo.swift
//  on 17/9/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class UserLoginInfo : NSObject{

	var adress : String!
	var emailVerified : Bool!
	var message : String!
	var mobilePhoneVerified : Bool!
	var personalSign : String!
	var phone : String!
	var point : Int!
	var sessionToken : String!
	var userEmail : String!
	var userID : String!
	var userNickname : String!
	var userSex : Bool!
	var userState : Bool!
	var userStudentID : String!


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
	init(fromDictionary dictionary: NSDictionary){
		adress = dictionary["adress"] as? String
		emailVerified = dictionary["emailVerified"] as? Bool
		message = dictionary["message"] as? String
		mobilePhoneVerified = dictionary["mobilePhoneVerified"] as? Bool
		personalSign = dictionary["personalSign"] as? String
		phone = dictionary["phone"] as? String
		point = dictionary["point"] as? Int
		sessionToken = dictionary["sessionToken"] as? String
		userEmail = dictionary["userEmail"] as? String
		userID = dictionary["userID"] as? String
		userNickname = dictionary["userNickname"] as? String
		userSex = dictionary["userSex"] as? Bool
		userState = dictionary["userState"] as? Bool
		userStudentID = dictionary["userStudentID"] as? String
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if adress != nil{
			dictionary["adress"] = adress
		}
		if emailVerified != nil{
			dictionary["emailVerified"] = emailVerified
		}
		if message != nil{
			dictionary["message"] = message
		}
		if mobilePhoneVerified != nil{
			dictionary["mobilePhoneVerified"] = mobilePhoneVerified
		}
		if personalSign != nil{
			dictionary["personalSign"] = personalSign
		}
		if phone != nil{
			dictionary["phone"] = phone
		}
		if point != nil{
			dictionary["point"] = point
		}
		if sessionToken != nil{
			dictionary["sessionToken"] = sessionToken
		}
		if userEmail != nil{
			dictionary["userEmail"] = userEmail
		}
		if userID != nil{
			dictionary["userID"] = userID
		}
		if userNickname != nil{
			dictionary["userNickname"] = userNickname
		}
		if userSex != nil{
			dictionary["userSex"] = userSex
		}
		if userState != nil{
			dictionary["userState"] = userState
		}
		if userStudentID != nil{
			dictionary["userStudentID"] = userStudentID
		}
		return dictionary
	}
}
