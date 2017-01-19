//
//  ViewController.swift
//  workshop3
//
//  Created by Wei Fan on 1/17/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import UIKit

class BookListViewController: UITableViewController {

    @IBOutlet weak var bookNumbers: UILabel!
    var bookList: Array<Book> = [Book]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadStaticData()
        bookNumbers.text = "\(bookList.count)本"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellID = "BookCell"
        let cell = tableView.dequeueReusableCell(withIdentifier:CellID, for: indexPath) as! BookCell
        
        let book:Book = bookList[indexPath.row]
        cell.bookName?.text = book.name
        cell.author?.text = book.author
        cell.available?.text = book.isAvailable ? "Available" : "Not Available"
        
        return cell
    }
    
    func loadStaticData() {
        bookList.removeAll()
        for item in StaticData().bookList {
            let book = Book()
            book.name = item["name"] as! String
            book.author = item["author"] as! String
            book.isAvailable = item["isAvailable"] as! Bool
            bookList.append(book)
        }
    }
    
}

