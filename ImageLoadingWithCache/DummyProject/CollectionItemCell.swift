//
//  CollectionItemCell.swift
//  DummyProject
//
//  Created by Yusuf Ak on 26.11.2020.
//

import UIKit

class CollectionItemCell: UICollectionViewCell {
        
    @IBOutlet weak var imageView: DownloadableImageView!
    
    var cellReused: (() -> Void)?
    
    override func prepareForReuse() {
        super.prepareForReuse()
        cellReused?()
    }
}
