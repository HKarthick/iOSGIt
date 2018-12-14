//
//  Viewport.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on December 11, 2018

import Foundation


class Viewport : NSObject, NSCoding{

    var northeast : Northeast!
    var southwest : Southwest!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let northeastData = dictionary["northeast"] as? [String:Any]{
            northeast = Northeast(fromDictionary: northeastData)
        }
        if let southwestData = dictionary["southwest"] as? [String:Any]{
            southwest = Southwest(fromDictionary: southwestData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if northeast != nil{
            dictionary["northeast"] = northeast.toDictionary()
        }
        if southwest != nil{
            dictionary["southwest"] = southwest.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        northeast = aDecoder.decodeObject(forKey: "northeast") as? Northeast
        southwest = aDecoder.decodeObject(forKey: "southwest") as? Southwest
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if northeast != nil{
            aCoder.encode(northeast, forKey: "northeast")
        }
        if southwest != nil{
            aCoder.encode(southwest, forKey: "southwest")
        }
    }
}