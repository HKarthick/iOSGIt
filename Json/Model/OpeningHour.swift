//
//  OpeningHour.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on December 11, 2018

import Foundation


class OpeningHour : NSObject, NSCoding{

    var openNow : Bool!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        openNow = dictionary["open_now"] as? Bool
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if openNow != nil{
            dictionary["open_now"] = openNow
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        openNow = aDecoder.decodeObject(forKey: "open_now") as? Bool
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if openNow != nil{
            aCoder.encode(openNow, forKey: "open_now")
        }
    }
}