//
//  CellConfigurator.swift
//  DescriptorArrays
//
//  Created by Martin Mitrevski on 21.02.18.
//  Copyright © 2018 Mitrevski. All rights reserved.
//

import UIKit

class CellConfigurator {
    
    static func configure(cell: UITableViewCell?,
                          withDescriptor descriptor: Descriptor,
                          forBook book: Book) -> UITableViewCell {
        
        switch descriptor {
        case .Title, .Subtitle:
            return configureTitleCell(cell, forBook: book)
        case .Author:
            return configureAuthorCell(cell, forBook: book)
        case .Publisher:
            return configurePublisherCell(cell, forBook: book)
        case .Image:
            return configureImageCell(cell, forBook: book)
        }
    }
    
    static func configureTitleCell(_ cell: UITableViewCell?, forBook book: Book) -> TitleCell {
        guard let cell = cell as? TitleCell else {
            fatalError("Cell is not dequeued properly")
        }
        let title = cell.reuseIdentifier == Descriptor.Title.rawValue ? book.title : (book.subtitle ?? "")
        cell.setup(withTitle: title)
        return cell
    }
    
    static func configureAuthorCell(_ cell: UITableViewCell?, forBook book: Book) -> AuthorCell {
        guard let cell = cell as? AuthorCell else {
            fatalError("Cell is not dequeued properly")
        }
        cell.setup(withAuthor: book.author, location: book.authorLocation)
        return cell
    }
    
    static func configurePublisherCell(_ cell: UITableViewCell?, forBook book: Book) -> PublisherCell {
        guard let cell = cell as? PublisherCell else {
            fatalError("Cell is not dequeued properly")
        }
        cell.setup(withPublisher: book.publisher!, logoPath: book.publisherLogo)
        return cell
    }
    
    static func configureImageCell(_ cell: UITableViewCell?, forBook book: Book) -> ImageCell {
        guard let cell = cell as? ImageCell else {
            fatalError("Cell is not dequeued properly")
        }
        cell.setup(withImagePath: book.imagePath!)
        return cell
    }
    
}
