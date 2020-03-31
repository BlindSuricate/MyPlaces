//
//  StorageManager.swift
//  MyPlaces
//
//  Created by user on 2020-03-27.
//  Copyright © 2020 TarasenkoSerhii. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
 
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
    
    
}
