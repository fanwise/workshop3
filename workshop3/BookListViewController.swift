//
//  ViewController.swift
//  workshop3
//
//  Created by Wei Fan on 1/17/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import UIKit

class BookListViewController: UITableViewController {

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
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellID = "BookCell"
        let cell = tableView.dequeueReusableCell(withIdentifier:CellID, for: indexPath) as! BookCell
        
        cell.bookName?.text = "book1"
        cell.author?.text = "author1"
        cell.available?.text = "Available"
        
        return cell
    }
    
}

