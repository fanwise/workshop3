//
//  DetailViewController.swift
//  workshop3
//
//  Created by Wei Fan on 1/19/17.
//  Copyright © 2017 Wei Fan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var viewModel = DetailViewModel()
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var available: UILabel!
    @IBOutlet weak var changeStatus: UIButton!
    
    override func viewDidLoad() {
        configUI()
    }
    
    func configViewModel(book: Book) {
        viewModel.book = book
    }
    
    func configUI() {
        name.text = viewModel.book.name
        author.text = viewModel.book.author
        available.text = viewModel.book.isAvailable ? "Available" : "Not Available"
        changeStatus.setTitle("改变借阅状态", for: .normal)
    }
    
    
}
