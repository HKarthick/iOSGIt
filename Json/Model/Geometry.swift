//
//  Geometry.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on December 11, 2018

import Foundation


class Geometry : NSObject, NSCoding{

    var location : Location!
    var viewport : Viewport!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        if let locationData = dictionary["location"] as? [String:Any]{
            location = Location(fromDictionary: locationData)
        }
        if let viewportData = dictionary["viewport"] as? [String:Any]{
            viewport = Viewport(fromDictionary: viewportData)
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if location != nil{
            dictionary["location"] = location.toDictionary()
        }
        if viewport != nil{
            dictionary["viewport"] = viewport.toDictionary()
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        location = aDecoder.decodeObject(forKey: "location") as? Location
        viewport = aDecoder.decodeObject(forKey: "viewport") as? Viewport
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if location != nil{
            aCoder.encode(location, forKey: "location")
        }
        if viewport != nil{
            aCoder.encode(viewport, forKey: "viewport")
        }
    }
}