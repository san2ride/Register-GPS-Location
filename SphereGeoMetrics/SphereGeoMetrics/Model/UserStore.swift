//
//  UserStore.swift
//  SphereGeoMetrics
//
//  Created by don't touch me on 10/25/17.
//  Copyright © 2017 trvl, LLC. All rights reserved.
//

import UIKit

class UserStore {
    
    var allUsers = [User]()
    
    let userArchiveURL: NSURL = {
        let documentsDirectories =
            FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentsDirectories.first!
        return documentDirectory.appendingPathComponent("users.archive") as NSURL
        }()
    
    init() {
        if let archivedUsers =
            NSKeyedUnarchiver.unarchiveObject(withFile: userArchiveURL.path!) as? [User] {
            allUsers += archivedUsers
        }
    }
    
    func saveChanges() -> Bool {
        print("Saving items to: \(userArchiveURL.path!)")
        return NSKeyedArchiver.archiveRootObject(allUsers, toFile: userArchiveURL.path!)
    }
}
