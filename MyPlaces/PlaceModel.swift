//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by user on 2020-03-24.
//  Copyright © 2020 TarasenkoSerhii. All rights reserved.
//


import RealmSwift


class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var type: String?
    @objc dynamic var location: String?
    @objc dynamic var imageData: Data?
    @objc dynamic var date = Date()
    @objc dynamic var rating = 0.0
    
    convenience init(name: String, type: String?, location: String?, imageData: Data?, rating: Double) {
        self.init()
        self.name = name
        self.type = type
        self.location = location
        self.imageData = imageData
        self.rating = rating 
    }
}
