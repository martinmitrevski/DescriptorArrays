//
//  ViewController.swift
//  DescriptorArrays
//
//  Created by Martin Mitrevski on 21.02.18.
//  Copyright © 2018 Mitrevski. All rights reserved.
//

import UIKit

enum Descriptor: String {
    case Title = "TitleCell"
    case Subtitle = "SubtitleCell"
    case Author = "AuthorCell"
    case Publisher = "PublisherCell"
    case Image = "ImageCell"
}

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var descriptorArray = [Descriptor]()
    var book: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        loadBook()
        createDescriptorArray()
    }
    
    private func setupTableView() {
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 300
    }
    
    private func createDescriptorArray() {
        descriptorArray = [Descriptor]()
        descriptorArray.append(.Title)
        if book.subtitle != nil {
            descriptorArray.append(.Subtitle)
        }
        descriptorArray.append(.Author)
        if book.publisher != nil {
            descriptorArray.append(.Publisher)
        }
        if book.imagePath != nil {
            descriptorArray.append(.Image)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return descriptorArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let descriptor = descriptorArray[indexPath.row]
        let dequeued = tableView.dequeueReusableCell(withIdentifier: descriptor.rawValue)
        return CellConfigurator.configure(cell: dequeued,
                                          withDescriptor: descriptor,
                                          forBook: book)
    }
    
    func loadBook() {
        book = Book(title: "Developing Conversational Interfaces for iOS",
                    subtitle: "Add responsive voice control to your apps",
                    author: "Martin Mitrevski",
                    authorLocation: "Macedonia",
                    publisher: "Apress",
                    publisherLogo: "apress.png",
                    imagePath: "bookImage.png")
    }
    
}

