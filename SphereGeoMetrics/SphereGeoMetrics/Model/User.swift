//
//  User.swift
//  SphereGeoMetrics
//
//  Created by don't touch me on 10/25/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class User: NSObject, NSCoding {
    
    var firstName: String
    var lastName: String
    var street: String
    var city: String
    var state: String
    var zipCode: String
    
    init(firstName: String, lastName: String, street: String, city: String, state: String, zipCode: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.street = street
        self.city = city
        self.state = state
        self.zipCode = zipCode
        
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        firstName = aDecoder.decodeObject(forKey: "firstName") as! String
        lastName = aDecoder.decodeObject(forKey: "lastName") as! String
        street = aDecoder.decodeObject(forKey: "street") as! String
        city = aDecoder.decodeObject(forKey: "city") as! String
        state = aDecoder.decodeObject(forKey: "state") as! String
        zipCode = aDecoder.decodeObject(forKey: "zipCode") as! String
        
        super.init()
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(firstName, forKey: "firstName")
        aCoder.encode(lastName, forKey: "lastName")
        aCoder.encode(street, forKey: "street")
        aCoder.encode(city, forKey: "city")
        aCoder.encode(state, forKey: "state")
        aCoder.encode(zipCode, forKey: "zipCode")
    }
    

}
