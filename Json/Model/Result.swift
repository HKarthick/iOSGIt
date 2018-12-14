//
//  Result.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on December 11, 2018

import Foundation


class Result : NSObject, NSCoding{

    var geometry : Geometry!
    var icon : String!
    var id : String!
    var name : String!
    var openingHours : OpeningHour!
    var photos : [Photo]!
    var placeId : String!
    var plusCode : PlusCode!
    var rating : Float!
    var reference : String!
    var scope : String!
    var types : [String]!
    var vicinity : String!


    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(fromDictionary dictionary: [String:Any]){
        icon = dictionary["icon"] as? String
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String
        placeId = dictionary["place_id"] as? String
        rating = dictionary["rating"] as? Float
        reference = dictionary["reference"] as? String
        scope = dictionary["scope"] as? String
        vicinity = dictionary["vicinity"] as? String
        if let geometryData = dictionary["geometry"] as? [String:Any]{
            geometry = Geometry(fromDictionary: geometryData)
        }
        if let openingHoursData = dictionary["opening_hours"] as? [String:Any]{
            openingHours = OpeningHour(fromDictionary: openingHoursData)
        }
        if let plusCodeData = dictionary["plus_code"] as? [String:Any]{
            plusCode = PlusCode(fromDictionary: plusCodeData)
        }
        photos = [Photo]()
        if let photosArray = dictionary["photos"] as? [[String:Any]]{
            for dic in photosArray{
                let value = Photo(fromDictionary: dic)
                photos.append(value)
            }
        }
    }

    /**
     * Returns all the available property values in the form of [String:Any] object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String:Any]
    {
        var dictionary = [String:Any]()
        if icon != nil{
            dictionary["icon"] = icon
        }
        if id != nil{
            dictionary["id"] = id
        }
        if name != nil{
            dictionary["name"] = name
        }
        if placeId != nil{
            dictionary["place_id"] = placeId
        }
        if rating != nil{
            dictionary["rating"] = rating
        }
        if reference != nil{
            dictionary["reference"] = reference
        }
        if scope != nil{
            dictionary["scope"] = scope
        }
        if vicinity != nil{
            dictionary["vicinity"] = vicinity
        }
        if geometry != nil{
            dictionary["geometry"] = geometry.toDictionary()
        }
        if openingHours != nil{
            dictionary["openingHours"] = openingHours.toDictionary()
        }
        if plusCode != nil{
            dictionary["plusCode"] = plusCode.toDictionary()
        }
        if photos != nil{
            var dictionaryElements = [[String:Any]]()
            for photosElement in photos {
                dictionaryElements.append(photosElement.toDictionary())
            }
            dictionary["photos"] = dictionaryElements
        }
        return dictionary
    }

    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        geometry = aDecoder.decodeObject(forKey: "geometry") as? Geometry
        icon = aDecoder.decodeObject(forKey: "icon") as? String
        id = aDecoder.decodeObject(forKey: "id") as? String
        name = aDecoder.decodeObject(forKey: "name") as? String
        openingHours = aDecoder.decodeObject(forKey: "opening_hours") as? OpeningHour
        photos = aDecoder.decodeObject(forKey: "photos") as? [Photo]
        placeId = aDecoder.decodeObject(forKey: "place_id") as? String
        plusCode = aDecoder.decodeObject(forKey: "plus_code") as? PlusCode
        rating = aDecoder.decodeObject(forKey: "rating") as? Float
        reference = aDecoder.decodeObject(forKey: "reference") as? String
        scope = aDecoder.decodeObject(forKey: "scope") as? String
        types = aDecoder.decodeObject(forKey: "types") as? [String]
        vicinity = aDecoder.decodeObject(forKey: "vicinity") as? String
    }

    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder)
    {
        if geometry != nil{
            aCoder.encode(geometry, forKey: "geometry")
        }
        if icon != nil{
            aCoder.encode(icon, forKey: "icon")
        }
        if id != nil{
            aCoder.encode(id, forKey: "id")
        }
        if name != nil{
            aCoder.encode(name, forKey: "name")
        }
        if openingHours != nil{
            aCoder.encode(openingHours, forKey: "opening_hours")
        }
        if photos != nil{
            aCoder.encode(photos, forKey: "photos")
        }
        if placeId != nil{
            aCoder.encode(placeId, forKey: "place_id")
        }
        if plusCode != nil{
            aCoder.encode(plusCode, forKey: "plus_code")
        }
        if rating != nil{
            aCoder.encode(rating, forKey: "rating")
        }
        if reference != nil{
            aCoder.encode(reference, forKey: "reference")
        }
        if scope != nil{
            aCoder.encode(scope, forKey: "scope")
        }
        if types != nil{
            aCoder.encode(types, forKey: "types")
        }
        if vicinity != nil{
            aCoder.encode(vicinity, forKey: "vicinity")
        }
    }
}