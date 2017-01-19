//
//  Book.swift
//  workshop3
//
//  Created by Wei Fan on 1/18/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import RealmSwift

class Book: Object {
    dynamic var name = ""
    dynamic var author = ""
    dynamic var isAvailable = true
}
