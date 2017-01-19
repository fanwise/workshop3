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
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDataFromRealm()
        bookNumbers.text = "\(bookList.count)本"
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
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "DetailViewController", sender: bookList[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "DetailViewController" {
            let destinationViewController = segue.destination as? DetailViewController
            destinationViewController?.configViewModel(book: sender as! Book)
        }
    }
    
    func loadDataFromRealm() {
        let results = realm.objects(Book.self)
        self.bookList = Array(results)
    }

}

