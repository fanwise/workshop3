//
//  File.swift
//  workshop3
//
//  Created by Wei Fan on 1/18/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import Foundation

struct BookList {
    var book1: Book = Book(name: "book-1", author: "author-1", isAvailable: true)
    var book2: Book = Book(name: "book-2", author: "author-2", isAvailable: false)
    var book3: Book = Book(name: "book-3", author: "author-3", isAvailable: false)
    var book4: Book = Book(name: "book-4", author: "author-4", isAvailable: false)
    var book5: Book = Book(name: "book-5", author: "author-5", isAvailable: false)
    
    var list: Array<Book> {
        return [book1, book2, book3, book4, book5]
    }
}
