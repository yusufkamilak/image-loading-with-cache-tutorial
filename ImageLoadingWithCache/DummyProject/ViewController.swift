//
//  ViewController.swift
//  DummyProject
//
//  Created by Yusuf Ak on 25.11.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellIdentifier", for: indexPath) as! CollectionItemCell
        let image = "https://picsum.photos/seed/\(indexPath.item + 1)/200/300" // Lorem Picsum. Sizin görsel url'iniz farklı olacaktır.
        
        cell.cellReused = {
            cell.imageView.cancelLoadingImage()
        }
        
        cell.imageView.downloadWithUrlSession(at: cell, urlStr: image)
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let dimension = UIScreen.main.bounds.width / 3
        return CGSize(width: dimension, height: dimension)
    }
}
