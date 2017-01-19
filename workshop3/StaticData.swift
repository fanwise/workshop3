//
//  StaticData.swift
//  workshop3
//
//  Created by Wei Fan on 1/19/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

struct StaticData {
    let book1: [String: Any] = ["name": "book-1", "author":"author-1", "isAvailable": true]
    let book2: [String: Any] = ["name": "book-2", "author":"author-2", "isAvailable": false]
    let book3: [String: Any] = ["name": "book-3", "author":"author-3", "isAvailable": false]
    let book4: [String: Any] = ["name": "book-4", "author":"author-4", "isAvailable": false]
    let book5: [String: Any] = ["name": "book-5", "author":"author-5", "isAvailable": false]
    
    var bookList: Array<[String: Any]> {
        return [book1, book2, book3, book4, book5]
    }
}
